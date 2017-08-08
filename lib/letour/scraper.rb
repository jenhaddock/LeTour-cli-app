class LeTour::Scraper

  def scrape_page
    doc = Nokogiri::HTML(open("http://www.letour.com/le-tour/2017/us/overall-route.html"))
    children = doc.css(tbody tr)
    binding.pry
  end

end


#    children = doc.css('.student-card')

#children.each do |student|
#  students << {
#    :name => student.css('.student-name').text,
#    :location => student.css('.student-location').text,
#    :profile_url => student.css('a')[0]['href']
#  }
