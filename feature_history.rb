require_relative "index.rb"
require "tty-prompt"
require "json"

class History
  attr_accessor :civ, :result, :history, :civ_list

  def initialize
    @history = []
    @civ = civ
    @result = result
    @civ_list = ["Aztecs",
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

  def get_civ
    loop do
      puts "What Civ did you play?"
      @civilisation = gets.chomp.capitalize
      unless @civ_list.include?(@civilisation)
        puts "please enter a valid civilisation"
      else
        break
      end
    end
    return @civilisation
  end

  def get_result
    loop do
      puts "Did you win or loose?"
      @result = gets.chomp
      unless @result == "win" || @result == "lost"
        puts "Accepted values are: win or lost, please try again"
      else
        break
      end
    end
    return @result
  end

  def add_history
    @history.push(get_civ => get_result)
    File.write("history.json", @history.to_json)
  end

  def display_input
    add_history
    puts @history

    puts "History Successfully updated"
  end
end

# end of class

def display_history_home
  system("clear")

  puts "---------------------"
  puts "HISTORY ACTIVATED"
  puts "---------------------"
end

def history_landing(history)
  input = @prompt.select(" ") do |landing|
    landing.choice "Update History", 1
    landing.choice "View History", 2
  end
  process_landing(input, history)
end

def process_landing(user_choice, history)
  case user_choice
  when 1
    update_history(history)
  when 2
    file = File.read("history.json")
    my_hash = JSON.parse(file)
    puts my_hash
  end
end

def update_history(display)
  display.display_input
end

