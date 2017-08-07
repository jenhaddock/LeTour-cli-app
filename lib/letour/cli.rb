class LeTour::CLI

  def call
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
  end

end
