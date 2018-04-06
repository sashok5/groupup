class Popular < ApplicationRecord
  self.table_name = 'popular'
  self.primary_key = :event_id

  def self.events
    order(:rank).limit(5).map do |p|
      Event.find(p.id)
    end
  end
end
