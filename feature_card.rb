require 'httparty'
require_relative 'index.rb'
require_relative 'aoe_civ_info.rb'
require 'tty-prompt'
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
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(1, "name")
        army = api_class.access(1, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(1, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
            
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(1, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        
        # --------
        tm_bonus = api_class.access(1, "team_bonus")
        civ_bonus = api_class.access(1, "civilization_bonus") 
        civ_bonus[0]
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 3
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(2, "name")
        army = api_class.access(2, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(2, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(2, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(2, "team_bonus")
        civ_bonus = api_class.access(2, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[1]]])
        system('clear')
        puts table.render(:ascii)  
    when 4  
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(3, "name")
        army = api_class.access(3, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(3, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(3, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(3, "team_bonus")
        civ_bonus = api_class.access(3, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 5
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(4, "name")
        army = api_class.access(4, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(5, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(5, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(5, "team_bonus")
        civ_bonus = api_class.access(5, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 6 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(5, "name")
        army = api_class.access(5, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(5, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(5, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(5, "team_bonus")
        civ_bonus = api_class.access(5, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 7
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(6, "name")
        army = api_class.access(6, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(1, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(1, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(6, "team_bonus")
        civ_bonus = api_class.access(6, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 8
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(7, "name")
        army = api_class.access(7, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(7, "unique_unit")
        string = unit[1].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(7, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(7, "team_bonus")
        civ_bonus = api_class.access(7, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 9 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(8, "name")
        army = api_class.access(8, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(8, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(8, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(8, "team_bonus")
        civ_bonus = api_class.access(8, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 10
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(9, "name")
        army = api_class.access(9, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(9, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(9, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(9, "team_bonus")
        civ_bonus = api_class.access(9, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 11
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(10, "name")
        army = api_class.access(10, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(10, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(10, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(10, "team_bonus")
        civ_bonus = api_class.access(10, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 12
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(11, "name")
        army = api_class.access(11, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(11, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(11, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(11, "team_bonus")
        civ_bonus = api_class.access(11, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 13 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(12, "name")
        army = api_class.access(12, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(12, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(12, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(12, "team_bonus")
        civ_bonus = api_class.access(12, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 14
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(13, "name")
        army = api_class.access(13, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(13, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(13, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(13, "team_bonus")
        civ_bonus = api_class.access(13, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 15
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(14, "name")
        army = api_class.access(14, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(14, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(14, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(14, "team_bonus")
        civ_bonus = api_class.access(14, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 16
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(15, "name")
        army = api_class.access(15, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(15, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(15, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(15, "team_bonus")
        civ_bonus = api_class.access(15, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 17
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(16, "name")
        army = api_class.access(16, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(16, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(16, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(16, "team_bonus")
        civ_bonus = api_class.access(16, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 18 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(17, "name")
        army = api_class.access(17, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(17, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(17, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(17, "team_bonus")
        civ_bonus = api_class.access(17, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 19
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(18, "name")
        army = api_class.access(18, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(18, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        uu = 't'
        #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(18, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        ut = 't'
        # --------
        tm_bonus = api_class.access(18, "team_bonus")
        civ_bonus = api_class.access(18, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 20 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(19, "name")
        army = api_class.access(19, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(19, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        uu = 't'
        #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(19, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        ut = 't'
        # --------
        tm_bonus = api_class.access(19, "team_bonus")
        civ_bonus = api_class.access(19, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
    when 21
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(20, "name")
        army = api_class.access(20, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(20, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        uu = 't'
        #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(20, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        ut = 't'
        # --------
        tm_bonus = api_class.access(20, "team_bonus")
        civ_bonus = api_class.access(20, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 22 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(21, "name")
        army = api_class.access(21, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(21, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(21, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(21, "team_bonus")
        civ_bonus = api_class.access(21, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 23
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(22, "name")
        army = api_class.access(22, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(22, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        # #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(22, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(22, "team_bonus")
        civ_bonus = api_class.access(22, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 24 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(23, "name")
        army = api_class.access(23, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(23, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        # #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(23, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(23, "team_bonus")
        civ_bonus = api_class.access(23, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[1]]])
        system('clear')
        puts table.render(:ascii)
    when 25
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(24, "name")
        army = api_class.access(24, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(24, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        # #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(24, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(24, "team_bonus")
        civ_bonus = api_class.access(24, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 26
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(25, "name")
        army = api_class.access(25, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        unit = api_class.access(25, "unique_unit")
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = api_class.access(25, "unique_tech")
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(25, "team_bonus")
        civ_bonus = api_class.access(25, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 27 
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(26, "name")
        army = api_class.access(26, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(26, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        uu = 't'
        #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(26, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        ut = 't'
        # --------
        tm_bonus = api_class.access(26, "team_bonus")
        civ_bonus = api_class.access(26, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[1]]])
        system('clear')
        puts table.render(:ascii) 
    when 28
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(27, "name")
        army = api_class.access(27, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(27, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        uu = 't'
        #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(27, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        ut = 't'
        # --------
        tm_bonus = api_class.access(27, "team_bonus")
        civ_bonus = api_class.access(27, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 29
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(28, "name")
        army = api_class.access(28, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(28, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        uu = 't'
        #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(28, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        ut = 't'
        # --------
        tm_bonus = api_class.access(28, "team_bonus")
        civ_bonus = api_class.access(28, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 30
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(29, "name")
        army = api_class.access(29, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(29, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        # #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(29, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(29, "team_bonus")
        civ_bonus = api_class.access(29, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 31
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(30, "name")
        army = api_class.access(30, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(30, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        # #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(30, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(30, "team_bonus")
        civ_bonus = api_class.access(30, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
    when 32
        puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        name = api_class.access(31, "name")
        army = api_class.access(31, "army_type")
        #------------------------------------------------------------ API ACCESS Nested 
        # unit = api_class.access(31, "unique_unit")
        # string = unit[0].to_s
        # response2 = HTTParty.get(string)
        # uu = response2.parsed_response["name"]
        # #------------------------------------------------------------ API ACCESS Nested  
        # tech = api_class.access(31, "unique_tech")
        # string = tech[0].to_s
        # response2 = HTTParty.get(string)
        # ut = response2.parsed_response["name"]
        # --------
        tm_bonus = api_class.access(31, "team_bonus")
        civ_bonus = api_class.access(31, "civilization_bonus") 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
        end




end 