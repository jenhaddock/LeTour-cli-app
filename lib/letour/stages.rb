class LeTour::Stages
  attr_accessor :stage, :type, :start, :finish, :distance, :date, :details

  @@all = []

  def initialize(stage_hash)
    stage_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_from_site(stage_info)
    if stage_info.css('td.etape')[0].text != '-'
      town_array = stage_info.css('td.parcours')[0].text.split(" / ")
      stage_info = {:stage => stage_info.css('td.etape')[0].text,
               :type => stage_info.css('td.type')[0].text,
               :date => stage_info.css('td.date')[0].text,
               :start => town_array[0],
               :finish => town_array[1],
               :distance => stage_info.css('td.distance')[0].text,
               :details => stage_info.css('td.details a')[0]['href']}
      self.new(stage_info)
    end
  end

end
