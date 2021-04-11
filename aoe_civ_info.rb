require "httparty"

class Api_Info
  attr_accessor :civilisations

  def initialize
    @civilisations = civilisations
  end

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
end
