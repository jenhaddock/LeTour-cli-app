class LeTour::Scraper

  def self.scrape_page
    doc = Nokogiri::HTML(open("http://www.letour.com/le-tour/2017/us/overall-route.html"))
    children = doc.css('tbody tr')

    children.each do |stage|
      LeTour::Stages.new_from_site(stage)
    end
  end

end
