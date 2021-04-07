require_relative 'index.rb'

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

#######not part of class

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

  

def back_to_main
    choice = @prompt.select(" ") do |menu|
        menu.choice "Main", 1 
        # menu.choice "Exit", 2
    end
end   
    # case choice
    # when 1 
    #     app = App.new
    #     app.run
    # when 2 
    #     # system('clear')
    #     system('exit')
    # end


