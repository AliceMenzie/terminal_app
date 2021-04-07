require_relative 'index.rb'
require 'tty-prompt'
# require_relative 'json'

class History 
    attr_accessor :civ, :result, :history

    def initialize 
        @history = {}
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
        @history[get_civ] = get_result
        
    end


    def display_input
        add_history
        puts "#{@history.keys} #{@history.values}"

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


        def history_landing
            input = @prompt.select(" ") do |landing|
                landing.choice "Update History", 1
                landing.choice "View History", 2

            end
            process_landing(input)
        end

        def process_landing(user_choice)
            case user_choice  
            when 1
                 #Update History
                 display_history
                #  back_to_main
                
            when 2 
                 #View History
                 back_to_main
                 puts @history
             end        
        end

     def display_history
        display = History.new
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
    
    