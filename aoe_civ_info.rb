require "httparty"
require "tty-table"
# require 'feature_card'
class Api_Info
  attr_accessor :civilisations

  def initialize
    @civilisations = civilisations
  end

  #   def access_aoe_info
  #     begin
  #     url = "https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations"
  #     response = HTTParty.get(url)
  #     unless response.code = 200
  #         puts "ERROR #{response.code}"
  #     end
  #     rescue HTTParty::Error => e
  #         puts "{e}"
  #     rescue StandardError => se
  #         puts "{se}"
  #     end
  #     @civilisations = response.parsed_response["civilizations"]
  #     # @civilisations.each { |civ_properties| puts civ_properties["name"]  }
  #     puts @civilisations[0]["name"]
  #   end

  def access_u_units
    @civilisations.each do |property_u_unit| puts property_u_unit["unique_unit"] end
  end

  def access
    begin
      url = "https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations"
      response = HTTParty.get(url)
      unless response.code == 200
        puts "ERROR response code: #{response.code}"
        return
      end
    rescue HTTParty::Error => e
      puts "ERROR #{e}"
      return 
    rescue StandardError => e
      puts "ERROR #{e}"
      return
    end 
    
    
    return response.parsed_response["civilizations"]
  end

  def access_u_tech
  end

  def display_civ_properties
  end
end

# api_class = Api_Info.new
# api_class.access_aoe_info
# api_class.access_u_units
# api_class.access(0, "name")
# api_class = Api_Info.new
#         api_class.access(0, "name")
#         api_class.access(0, "army_type")
#         api_class.access(0, "unique_unit")
#         api_class.access(0, "unique_tech")
#         api_class.access(0, "team_bonus")
#         api_class.access(0, "civilization_bonus")
# api_class = Api_Info.new

# # def table(access)
# # end
# name = api_class.access(0, "name")
# army = api_class.access(0, "army_type")
# #------------------------------------------------------------ API ACCESS Nested
# unit = api_class.access(0, "unique_unit")
# string = unit[0].to_s
# response2 = HTTParty.get(string)
# uu = response2.parsed_response["name"]

# #------------------------------------------------------------ API ACCESS Nested
# tech = api_class.access(0, "unique_tech")
# string = tech[0].to_s
# response2 = HTTParty.get(string)
# ut = response2.parsed_response["name"]

# tm_bonus = api_class.access(0, "team_bonus")
# civ_bonus = api_class.access(0, "civilization_bonus")
# civ_bonus[0]
# #  civ_bonus[1]
# #  civ_bonus[2]
# #  civ_bonus[3]

# table = TTY::Table.new(["Civilisation ","Army Type ", "Unique Unit ", "Unique Technology ", "Team Bonus ", "Civilisation Bonus "],
# [[name, army, uu, ut, tm_bonus, civ_bonus[0]]])
# puts table.render(:ascii)
