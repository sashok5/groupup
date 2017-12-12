class User < ActiveRecord::Base
  has_many :created_events, class_name: "Event", foreign_key: "created_by_user_id"
  has_many :attendances
  has_many :events, through: :attendances
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  has_and_belongs_to_many :tags, join_table: "user_tags"
  accepts_nested_attributes_for :tags


  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 4 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed


     ActiveRecord::Base.connection.exec_query("SELECT u.name, a.created_at, e.title, e.event_id FROM
                          attendances a
                            join events e on e.event_id = a.event_id
                            join relationships r on r.followed_id = a.user_id
                            join users u on u.user_id = r.followed_id
                            WHERE r.follower_id = #{self.id} and a.created_at > current_date
                             order by a.created_at DESC")

  end


  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

  def attending?(event)
    attendances.find_by(event_id: event.id)
  end


  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
