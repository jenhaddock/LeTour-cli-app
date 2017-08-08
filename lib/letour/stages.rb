class LeTour::Stages
  attr_accessor :stage, :type, :start, :finish, :distance, :date, :details

  @@all = []

  def intialize(stage:, type:, start:, finish:, distance:, date:, details:)
    @stage = stage
    @type = type
    @start = start
    @finish = finish
    @distance = distance
    @date = date
    @details = details
  end

  def self.all
    @@all
  end

  def self.new_from_site(stage_info)
    if stage_info.css('td.etape')[0].text != '-'
      town_array = stage_info.css('td.parcours')[0].text.split(" / ")

  binding.pry
      self.new(stage: stage_info.css('td.etape')[0].text,
               type: stage_info.css('td.type prolouge')[0].text,
               date: stage_info.css('td.date')[0].text,
               start: town_array[0],
               finish: town_array[1],
               distance: stage_info.css('td.distance')[0].text,
               details: stage_info.css('td.details a')[0]['href'])

    end
  end

end
