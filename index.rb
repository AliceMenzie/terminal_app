require_relative 'feature_random.rb'
require_relative 'feature_history.rb'
require_relative 'feature_card.rb'

require 'tty-prompt'
# require 'artii'
# require_relative 'feature_history.rb'

class App 

    def initialize 
        @prompt = TTY::Prompt.new
        @history = History.new

    end

    def run 
        loop do
           
            display_welcome
            # a = Artii::Base.new :font => 'slant'
            # puts a.asciify('Welcome to AoE Performance Tracker')
            # display_menu
            # select_menu_option
            # process_menu(menu_option)
            input = @prompt.select("Menu: ") do |menu|
                menu.choice "Match History", 1
                menu.choice "Random Civ Challenge", 2
                menu.choice "Civ Info", 3 
                menu.choice "Exit", 4
             end
            # @prompt.select('Menu:', ['Match History','Random Civ Challenge', 'Civ Info', 'Exit' ])
            
            process_menu(input)
            if input == 4
                system ('clear')
            break
             end 
           
        end
    end

    def process_menu(menu_choice)
        case menu_choice
        when 1 
            #go to Match History
            display_history_home
            history_landing(@history)
            # display_history
            back_to_main

            
        when 2 
            #go to Random Civ 
            display_randomize_home
            display_randomize
            back_to_main
            
        when 3 
            # go to Civ Info
            display_info_home
            back_to_main
        when  4 
            # exit the app
            
           
        end    
        
       


    end

    # def display_menu 
        
    #     puts 'Menu'
    #     puts "----"
    #     puts '1. Match History '
    #     puts '2. Random Civ Challenge'
    #     puts '3. Civ Info'
    #     puts '4. Exit'
    
    # end

    def display_welcome
        puts "----------------------------------"
        puts "Welcome to AoE Performance Tracker"
        puts "----------------------------------"
    end
end 

    # def menu_option 
    #     gets.to_i
    #     # system ('clear')
    # end

    # def display_randomize_home 
        
    #     system('clear') 
    #     puts "go back"  
    #     input = @prompt.select("Go Back ") do |menu|
    #         menu.choice "Go Back", 1 
    #     puts "---------------------"
    #     puts "CHALLENGE ACTIVATED"
    #     puts "---------------------"
    # end

    # def display_randomize
    #     generate = Randomize.new 
    #     puts " Your Challenge Civ is: #{generate.generate_random}"
    
    #  end 

     

    # def display_history
    #     new_history = History.new
    #     puts "this is a string in history"
    
    # end

    
    
    
  
    # def return_main_menu
    # end 

