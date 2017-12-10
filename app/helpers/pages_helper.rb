module PagesHelper

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

end
