class StrainFinder::CLI

  def call
    puts "Hello, welcome to the Cannabis Strain Finder."
    search_by
    search_input
    goodbye
  end

  def search_by
    puts "Would you like to search by:"
    puts "1. Name"
    puts "2. Race"
    puts "3. Flavor"
    puts "4. Effects"
  end

  def search_input
    input = nil
      puts "Enter the number you would like to search by, type list to see your options again, type exit to leave the program."
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        name_search
      when "2"
        race_search
      when "3"
        flavor_search
      when "4"
        effect_search
      when "list"
        search_by
      else
        puts "Please input valid option"
        search_by
      end
    end
  end

  def name_search
    input = nil
      puts "Please enter the name of the strain you are searching for:"
      puts "To restart search type exit."
    while input != "exit"

    end
  end

  def race_search
    input = nil
      puts "Please enter Indica, Sativa, or Hybrid."
      puts "To restart search type exit."
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "indica"

      when "sativa"

      when "hybrid"

      else
        puts "Please input valid selection"
        race_search
      end
    end
  end

  def flavor_search
    input = nil
      puts "Please enter the desired flavor:"
      puts "To restart search type exit."
    while input != "exit"
      input = gets.strip.downcase
      case input
      when condition

      else
        puts "Please input valid selection"
        flavor_search
      end
    end
  end

  def effect_search
    input = nil
      puts "Please enter the desired effect:"
      puts "To restart search type exit."
    while input != "exit"
      input = gets.strip.downcase
      case input
      when condition

      else
        puts "Please input valid selection"
        effect_search
      end
    end
  end

  def goodbye
    puts "Goodbye! Thank You for exploring!!"
  end
end
