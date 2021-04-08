require_relative 'index.rb'
require 'tty-prompt'
require 'json'

class History 
    attr_accessor :civ, :result, :history

    def initialize 
        @history = []
        @civ = civ
        @result = result
        
    end 

    def run_history 
    end

    def get_civ
        puts "What Civ did you play?"
        @civilisation = gets.chomp 
        
    end

    def get_result
        puts "Did you win or loose?"
        @result = gets.chomp 
    end

    def add_history
        @history.push(get_civ => get_result)
        File.write("history.json", @history.to_json)
    end



    def display_input
        add_history
        puts @history
        # File.open("history.json", "w+")
        # File.write("history.json", @history.to_json)
        puts "History Successfully updated"
    end
   
end 


    # puts "#{new_history}"
    # new_history.add_history

    # file.write("history.json")@history.to_json

    def display_history_home 
        system('clear') 
     
        puts "---------------------"
        puts "HISTORY ACTIVATED"
        puts "---------------------"
    
    end 


        def history_landing(history)
            input = @prompt.select(" ") do |landing|
                landing.choice "Update History", 1
                landing.choice "View History", 2

            end
            process_landing(input,history)
        end
        

        def process_landing(user_choice, history)
            case user_choice  
            when 1
                 #Update History
                 update_history(history)
                #  write_json
                #  back_to_main

                
            when 2 
                 #View History
                #  back_to_main
                #  puts @history
                file = File.read("history.json") ### this is the raw string
                my_hash = JSON.parse(file) ##this is parse 
                puts my_hash
             end        
        end

     def update_history(display)
        # puts "Civ: #{@civ} result: #{@result}"
        display.display_input
     end

    def back_to_main
        choice = @prompt.select(" ") do |menu|
            menu.choice "Main", 1 
            # menu.choice "Exit", 2
        end
        system('clear')
    end    
    

