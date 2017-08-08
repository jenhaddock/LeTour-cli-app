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


end
