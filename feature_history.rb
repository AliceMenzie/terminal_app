require_relative "index.rb"
require_relative "feature_random"
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

  # def run_history
  # end

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
    # File.open("history.json", "w+")
    # File.write("history.json", @history.to_json)
    puts "History Successfully updated"
  end
end

##############--------------END OF CLASS -----------------------

# puts "#{new_history}"
# new_history.add_history

# file.write("history.json")@history.to_json

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
    menu.choice "Exit", 4
  end
  system("clear")
end
