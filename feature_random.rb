require_relative "index.rb"

class Randomize
  attr_accessor :civ_array

  def initialize
    @civ_array = ["Aztecs",
                  "Berbers",
                  "Britons",
                  "Bulgarians",
                  "Burmese",
                  "Byzantines",
                  "Celts",
                  "Chinese",
                  "Cumans",
                  "Ethiopians",
                  "Franks",
                  "Goths",
                  "Huns",
                  "Incas",
                  "Indians",
                  "Italians",
                  "Japanese",
                  "Khmer",
                  "Koreans",
                  "Lithuanians",
                  "Magyars",
                  "Malay",
                  "Malians",
                  "Mayans",
                  "Mongols",
                  "Persians",
                  "Portuguese",
                  "Saracens",
                  "Slavs",
                  "Spanish",
                  "Tatars",
                  "Teutons",
                  "Turks",
                  "Vietnamese",
                  "Vikings "]
  end

  def generate_random
    challenge = @civ_array.sample
  end
end

#End of class

def display_randomize_home
  system("clear")

  puts "---------------------"
  puts "CHALLENGE ACTIVATED"
  puts "---------------------"
end

def display_randomize
  generate = Randomize.new
  puts " Your Challenge Civ is: #{generate.generate_random}"
end


