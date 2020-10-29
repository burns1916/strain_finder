class StrainFinder::CLI

  def call
    puts "Hello, welcome to the Cannabis Strain Finder."
    race_search
  end


  def race_search
    input = nil
      puts "Would you like to search by:"
      puts "1. Indica - Relaxing effects, Shorter stature, Broader leaves, Shorter growing cycle."
      puts "2. Sativa - Energizing effects, Taller stature, Thinner leaves, Longer growing cycle."
      puts "3. Hybrid - A cross of Indica and Sativa."
      puts "To exit type exit."
      input = gets.strip.downcase.to_s
      case input
      when "1" || "indica"
        StrainFinder::Strains.select_by_race("indica")
      when "2" || "sativa"
        StrainFinder::Strains.select_by_race("sativa")
      when "3" || "hybrid"
        StrainFinder::Strains.select_by_race("hybrid")
      when "exit"
        goodbye
      else
        puts "Please input valid selection"
        race_search
      end
      description_search
  end


    def description_search
      id_input = nil
      puts "Enter the number of the strain you would like to know more about."
      id_input = gets.strip.downcase.to_s
      StrainFinder::Scraper.fetch_description(id_input)
      loop_back
    end

    def loop_back
      loop_back_input = nil
      puts "Would you like to search again?"
      puts "[y/n]"
      loop_back_input = gets.strip.downcase
      case loop_back_input
      when "y" || "yes"
        race_search
      when "n" || "no"
        goodbye
      end
    end

    def goodbye
      puts "Goodbye! Thank You for exploring!!"
    end
  end

    #def search_by
    #  puts "Would you like to search by:"
    #  puts "1. Name"
    #  puts "2. Race"
    #  puts "3. Flavor"
    #  puts "4. Effects"
    #end

    #def search_input
    #  input = nil
    #    puts "Enter the number you would like to search by, type list to see your options again, type exit to leave the program."
    #    input = gets.strip.downcase
    #    case input
    #    when "1"
    #      name_search
    #    when "2"
    #      race_search
    #    when "3"
    #      flavor_search
    #    when "4"
    #      effect_search
    #    when "list"
    #      search_by
    #      search_input
    #    when "exit"
    #      goodbye
    #    else
    #      puts "Please input valid option"
    #      search_by
    #      search_input
    #    end
    #end

  #  def name_search
  #    input = nil
  #      puts "Please enter the name of the strain you are searching for:"
  #      puts "To restart search type restart. Or to exit type exit."
  #      input = gets.strip.downcase
  #        case input
  #        when "restart"
  #          call
  #        when "exit"
  #          goodbye
  #        else
  #          puts "Please Try Valid Strain Name"
  #          name_search
  #        end
  #  end



  #def flavor_search
  #  input = nil
  #    puts "Please enter the desired flavor:"
  #    puts "To restart search type exit."
  #  while input != "exit"
  #    input = gets.strip.downcase
  #    case input
  #    when condition

  #    else
  #      puts "Please input valid selection"
  #      flavor_search
  #    end
  #  end
  #end

  #def effect_search
  #  input = nil
  #    puts "Please enter the desired effect:"
  #    puts "To restart search type exit."
  #    input = gets.strip.downcase
  #    case input
  #    when condition

  #    else
  #      puts "Please input valid selection"
  #      effect_search
  #    end
  #  end
  #end
