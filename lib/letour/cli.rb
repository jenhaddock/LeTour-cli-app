class LeTour::CLI

  def call
    LeTour::Scraper.scrape_page
    menu
  end

  def menu
    puts "Welcome to the 2017 Tour de France"
    puts "----------------------------------"
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

    input = gets.strip

    if input.downcase == "exit"
      exit
    else
      if input.downcase == "menu"
        menu
      else
        if input.to_i == 0
          print_summary(type)
        end
      end
    end

    LeTour::Stages.all do |s|
      if type = spaces || type = s.type.downcase
         puts "#{s.stage}. #{s.type} #{s.date} #{s.start} - #{s.finish} #{s.distance}"
      end
    end
  end

end
