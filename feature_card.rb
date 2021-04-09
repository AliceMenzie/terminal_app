require_relative 'index.rb'
require_relative 'aoe_civ_info.rb'
require 'tty-prompt'
require 'httparty'
require 'tty-table'
# class Civ_Card

# end 


def display_info_home 
    system('clear') 
 
    puts "---------------------"
    puts "CIV INFO ACTIVATED"
    puts "---------------------"

end 

def civ_info_landing 
    input = @prompt.select(" ") do |landing|
        landing.choice "Aztecs", 1
        landing.choice "Britons", 2
        landing.choice "Byzantines", 3
        landing.choice "Celts", 4
        landing.choice "Chinese", 5
        landing.choice "Franks", 6
        landing.choice "Goths", 7
        landing.choice "Huns", 8
        landing.choice "Japanese", 9
        landing.choice "Koreans", 10
        landing.choice "Mayans", 11
        landing.choice "Mongols", 12
        landing.choice "Persians", 13
        landing.choice "Saracens", 14
        landing.choice "Spanish", 15
        landing.choice "Teutons", 16
        landing.choice "Turks", 17
        landing.choice "Vikings", 18
        landing.choice "Berbers", 19
        landing.choice "Burmese", 20
        landing.choice "Ethiopians", 21
        landing.choice "Goths", 22
        landing.choice "Incas", 23
        landing.choice "Indians", 24
        landing.choice "Italians", 25
        landing.choice "Japanese", 26
        landing.choice "Khmer", 27
        landing.choice "Magyars", 28
        landing.choice "Malians", 29
        landing.choice "Portuguese", 30
        landing.choice "Slavs", 31
        landing.choice "Vietnamese", 32
    end
 process_civ_landing(input) 
end 

def process_civ_landing(user_choice)
    case user_choice
    when 1 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(0, "name")
        army = api_class.access(0, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(0, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]

        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(0, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        tm_bonus = api_class.access(0, "team_bonus")
        civ_bonus = api_class.access(0, "civilization_bonus") 
        civ_bonus[0]
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
        [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
       
       

    when 2  
    when 3  
    when 4  
    when 5  
    when 6  
    when 7  
    when 8  
    when 9  
    when 10  
    when 11 
    when 12 
    when 13  
    when 14  
    when 15  
    when 16  
    when 17  
    when 18  
    when 19 
    when 20 
    when 21 
    when 22  
    when 23  
    when 24 
    when 25 
    when 26  
    when 27  
    when 28  
    when 29  
    when 27  
    when 28
    when 29
    when 30
    when 31
    when 32
        end




end 