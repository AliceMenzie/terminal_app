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
    puts "This might take a minute ...retrieving data..."
        api_class = Api_Info.new 
        returned_results = api_class.access
        if returned_results.nil?
            puts "An Error has occured, return to menu"
            return
        end 
    case user_choice
    when 1 
        name = returned_results[0]["name"]
        army = returned_results[0]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[0]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[0]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        tm_bonus = returned_results[0]["team_bonus"]
        civ_bonus = returned_results[0]["civilization_bonus"] 
        civ_bonus[0]
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
        [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
    when 2
         
        returned_results = api_class.access
        if returned_results.nil?
            return
        end 
        name = returned_results[1]["name"]
        army = returned_results[1]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[1]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
            
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[1]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        
        # --------
        tm_bonus = returned_results[1]["team_bonus"]
        civ_bonus = returned_results[1]["civilization_bonus"] 
        civ_bonus[0]
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 3
         
        name = returned_results[2]["name"]
        army = returned_results[2]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[2]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[2]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[2]["team_bonus"]
        civ_bonus = returned_results[2]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[1]]])
        system('clear')
        puts table.render(:ascii)  
    when 4  
         
        name = returned_results[3]["name"]
        army = returned_results[3]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[3]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[3]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[3]["team_bonus"]
        civ_bonus = returned_results[3]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 5
         
        name = returned_results[4]["name"]
        army = returned_results[4]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[5]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[5]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[5]["team_bonus"]
        civ_bonus = returned_results[5]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 6 
         
        name = returned_results[5]["name"]
        army = returned_results[5]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[5]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[5]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[5]["team_bonus"]
        civ_bonus = returned_results[5]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 7
         
        name = returned_results[6]["name"]
        army = returned_results[6]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[1]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[1]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[6]["team_bonus"]
        civ_bonus = returned_results[6]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 8
         
        name = returned_results[7]["name"]
        army = returned_results[7]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[7]["unique_unit"]
        string = unit[1].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[7]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[7]["team_bonus"]
        civ_bonus = returned_results[7]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 9 
         
        name = returned_results[8]["name"]
        army = returned_results[8]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[8]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[8]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[8]["team_bonus"]
        civ_bonus = returned_results[8]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 10
         
        name = returned_results[9]["name"]
        army = returned_results[9]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[9]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[9]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[9]["team_bonus"]
        civ_bonus = returned_results[9]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 11
         
        name = returned_results[10]["name"]
        army = returned_results[10]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[10]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[10]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[10]["team_bonus"]
        civ_bonus = returned_results[10]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 12
         
        name = returned_results[11]["name"]
        army = returned_results[11]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[11]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[11]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[11]["team_bonus"]
        civ_bonus = returned_results[11]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 13 
         
        name = returned_results[12]["name"]
        army = returned_results[12]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[12]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[12]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[12]["team_bonus"]
        civ_bonus = returned_results[12]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 14
         
        name = returned_results[13]["name"]
        army = returned_results[13]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[13]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[13]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[13]["team_bonus"]
        civ_bonus = returned_results[13]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 15
         
        name = returned_results[14]["name"]
        army = returned_results[14]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[14]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[14]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[14]["team_bonus"]
        civ_bonus = returned_results[14]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 16
         
        name = returned_results[15]["name"]
        army = returned_results[15]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[15]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[15]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[15]["team_bonus"]
        civ_bonus = returned_results[15]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 17
         
        name = returned_results[16]["name"]
        army = returned_results[16]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[16]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[16]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[16]["team_bonus"]
        civ_bonus = returned_results[16]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 18 
         
        name = returned_results[17]["name"]
        army = returned_results[17]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[17]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[17]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[17]["team_bonus"]
        civ_bonus = returned_results[17]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 19
         
        name = returned_results[18]["name"]
        army = returned_results[18]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        uu = 'Genitour'
        #------------------------------------------------------------ API ACCESS Nested  
        ut = 'Maghrabi Camels'
        # --------
        tm_bonus = returned_results[18]["team_bonus"]
        civ_bonus = returned_results[18]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 20 
        name = returned_results[19]["name"]
        army = returned_results[19]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        uu = 'Arambai'
        #------------------------------------------------------------ API ACCESS Nested  
        ut = 'Manipur Cavalry'
        # --------
        tm_bonus = returned_results[19]["team_bonus"]
        civ_bonus = returned_results[19]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
    when 21
         
        name = returned_results[20]["name"]
        army = returned_results[20]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        uu = 'Shotel Warrior'
        #------------------------------------------------------------ API ACCESS Nested  
        ut = 'Torsion Engines'
        # --------
        tm_bonus = returned_results[20]["team_bonus"]
        civ_bonus = returned_results[20]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 22 
         
        name = returned_results[21]["name"]
        army = returned_results[21]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[21]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[21]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[21]["team_bonus"]
        civ_bonus = returned_results[21]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 23
         
        name = returned_results[22]["name"]
        army = returned_results[22]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
         uu = 'Kamayuk'
        # #------------------------------------------------------------ API ACCESS Nested  
        
        ut = 'Fabric Shields'
        # --------
        tm_bonus = returned_results[22]["team_bonus"]
        civ_bonus = returned_results[22]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 24 
         
        name = returned_results[23]["name"]
        army = returned_results[23]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
       uu = ' Imperial Camel Rider'
        # #------------------------------------------------------------ API ACCESS Nested  
        
        ut = 'Shatagni'
        # --------
        tm_bonus = returned_results[23]["team_bonus"]
        civ_bonus = returned_results[23]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[1]]])
        system('clear')
        puts table.render(:ascii)
    when 25
        name = returned_results[24]["name"]
        army = returned_results[24]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
       uu = 'Condottiero'
        # #------------------------------------------------------------ API ACCESS Nested  
        ut = 'Silk Road'
        # --------
        tm_bonus = returned_results[24]["team_bonus"]
        civ_bonus = returned_results[24]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii) 
    when 26
         
        name = returned_results[25]["name"]
        army = returned_results[25]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        unit = returned_results[25]["unique_unit"]
        string = unit[0].to_s
        response2 = HTTParty.get(string)
        uu = response2.parsed_response["name"]
        #------------------------------------------------------------ API ACCESS Nested  
        tech = returned_results[25]["unique_tech"]
        string = tech[0].to_s
        response2 = HTTParty.get(string)
        ut = response2.parsed_response["name"]
        # --------
        tm_bonus = returned_results[25]["team_bonus"]
        civ_bonus = returned_results[25]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 27 
         
        name = returned_results[26]["name"]
        army = returned_results[26]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        uu = 'Ballista Elephant'
        #------------------------------------------------------------ API ACCESS Nested  
        ut = 'Tusk Swords'
        # --------
        tm_bonus = returned_results[26]["team_bonus"]
        civ_bonus = returned_results[26]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[1]]])
        system('clear')
        puts table.render(:ascii) 
    when 28
         
        name = returned_results[27]["name"]
        army = returned_results[27]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        uu = 'Magyar Huszar'
        #------------------------------------------------------------ API ACCESS Nested  
        
        ut = 'Corvinian Army'
        # --------
        tm_bonus = returned_results[27]["team_bonus"]
        civ_bonus = returned_results[27]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 29
         
        name = returned_results[28]["name"]
        army = returned_results[28]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        uu = 'Gbeto'
        #------------------------------------------------------------ API ACCESS Nested  
        ut = 'Tigui'
        # --------
        tm_bonus = returned_results[28]["team_bonus"]
        civ_bonus = returned_results[28]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 30
         
        name = returned_results[29]["name"]
        army = returned_results[29]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
         uu = 'Caravel'
        # #------------------------------------------------------------ API ACCESS Nested  
         ut = 'Carrack'
        # --------
        tm_bonus = returned_results[29]["team_bonus"]
        civ_bonus = returned_results[29]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)  
    when 31
         
        name = returned_results[30]["name"]
        army = returned_results[30]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
         uu = 'Boyar'
        # #------------------------------------------------------------ API ACCESS Nested  
        
         ut = 'Orthodoxy'
        # --------
        tm_bonus = returned_results[30]["team_bonus"]
        civ_bonus = returned_results[30]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
    when 32
        name = returned_results[31]["name"]
        army = returned_results[31]["army_type"]
        #------------------------------------------------------------ API ACCESS Nested 
        
         uu = 'Rattan Archer'
        # #------------------------------------------------------------ API ACCESS Nested  
         ut = 'Chatras'
        # --------
        tm_bonus = returned_results[31]["team_bonus"]
        civ_bonus = returned_results[31]["civilization_bonus"] 
        #---------------table
        table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "], 
       [[name, army,   uu, ut, tm_bonus, civ_bonus[0]]])
        system('clear')
        puts table.render(:ascii)
        end




end 