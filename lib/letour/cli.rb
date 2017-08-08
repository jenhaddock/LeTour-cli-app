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

      when "2"

      when "3"

      when "4"

      when "5"

      when "6"
        puts "See you at the 2018 Tour de France!"
        exit
      else
        menu
      end
  end

end
