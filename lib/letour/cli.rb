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
        puts "Which time trial would you like more info on?"
        print_summary(time_trial)
      when "3"
        puts "Which flat stage would you like more info on?"
        print_summary(flat)
      when "4"
        puts "Which hilly stage would you like more info on?"
        print_summary(hilly)
      when "5"
        puts "Which mountain stage would you like more info on?"
        print_summary(mountain)
      when "6"
        puts "See you at the 2018 Tour de France!"
        exit
      else
        menu
      end
  end

  def print_summary(type=nil)

 end

end
