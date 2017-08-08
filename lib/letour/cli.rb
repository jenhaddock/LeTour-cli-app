class LeTour::CLI

  def call
    LeTour::Scraper.scrape_page
    menu
  end

  def menu
    puts "      Welcome to the 2017 Tour de France"
    puts "-----------------------------------------------"
    puts "Which type of stages would you like to see?"
    puts "1. All Stages"
    puts "2. Time Trial Stages"
    puts "3. Flat Stages"
    puts "4. Hilly Stages"
    puts "5. Mountain Stages"
    puts "6. Exit"

    input = gets.strip

    case input
      when "1"
        print_summary
      when "2"
        print_summary('individual time trial')
      when "3"
        print_summary('flat')
      when "4"
        print_summary('hilly')
      when "5"
        print_summary('mountain')
      when "6"
        puts "See you at the 2018 Tour de France!"
        exit
      else
        menu
      end
  end

  def print_summary(type=nil)
    puts "Which #{type} would you like more info on? (Type exit to leave or menu to return)"

    LeTour::Stages.all do |s|
      if type = spaces || type = s.type.downcase
        puts "#{s.stage}. #{s.date}"
      end
    end

    input = gets.strip

    if input.downcase == "exit"
      exit
    elsif input.downcase == "menu"
        menu
      elsif input.to_i == 0
          print_summary(type)
        else
          print_detail(input)
    end

    puts "Would you like to see more stages? (Y/N)"
    input = gets.strip.downcase
    if input = "y"
      menu
    else
      exit
    end
  end

  def print_detail(stage)
    input = stage - 1

    s = LeTour::Stages.find(input.to_i)

    puts "Stage: #{s.stage}"
    puts "Type: #{s.type}"
    puts "Date: #{s.date}"
    puts "Start Town: #{s.start}"
    puts "Finish Town: #{s.finish}"
    puts "Distance: #{s.distance}"
    puts "Details: #{s.details}"
  end
end
