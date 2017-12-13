module PagesHelper

  $interest_images = Dir.glob("app/assets/images/interests/*.{gif,jpeg,png}")

  $event_snippets = Dir.glob("app/assets/images/eventsnippets/*.{jpeg,jpg,png}")

  def day(date)
    date.nil? ? 0 :
    date.mday
  end

  def month(date)
    date.nil? ? "Jan" :
        date.strftime("%b")
  end

  def year(date)
    date.nil? ? "2000" :
        date.strftime("%Y")
  end

  def time(date)
    date.nil? ? "All Day" :
        date.strftime("%I") + ':' + date.strftime("%M") + ' ' + date.strftime("%p")
  end
end
