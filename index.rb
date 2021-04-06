require_relative 'feature_random.rb'

class App 

    def initialize 

    end

    def run 
        display_welcome
        display_menu
        # select_menu_option
        process_menu(menu_option)
    end

    def process_menu(menu_choice)
        case menu_choice
        when 1 
            #go to Match History
            display_history_menu
        when 2 
            #go to Random Civ 
            display_randomize_home
            display_randomize
            # rdm = RandomCiv.new
            # puts rdm.select_random_civ  
            # system('clear')
            # puts random_civ
        when 3 
            # go to Civ Info
            display_card_menu
        when 4 
            # exit the app
            system('exit')
        end     


    end

    def display_menu 
        
        puts 'Menu'
        puts "----"
        puts '1. Match History '
        puts '2. Random Civ Challenge'
        puts '3. Civ Info'
        puts '4. Exit'
    
    end

    def display_welcome
        puts "----------------------------------"
        puts "Welcome to AoE Performance Tracker"
        puts "----------------------------------"
    end


    def menu_option 
        gets.to_i
        # system ('clear')
    end

    def display_randomize_home 
        system('clear')   
        puts "---------------------"
        puts "CHALLENGE ACTIVATED"
        puts "---------------------"
    
    
    end

    def display_randomize
        generate = Randomize.new 
        puts " Your Challenge Civ is: #{generate.generate_random}"
    
     end 

     
  
    

end 