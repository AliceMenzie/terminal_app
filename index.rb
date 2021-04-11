require_relative "feature_random.rb"
require_relative "feature_history.rb"
require_relative "feature_card.rb"
require "tty-prompt"

class App
  def initialize
    @prompt = TTY::Prompt.new
    @history = History.new
  end

  def run
    loop do
      display_welcome
      input = @prompt.select("Menu: ") do |menu|
        menu.choice "Match History", 1
        menu.choice "Random Civ Challenge", 2
        menu.choice "Civ Info", 3
        menu.choice "Exit", 4
      end
      process_menu(input)
      if input == 4
        system ("clear")
        break
      end
    end
  end

  def process_menu(menu_choice)
    case menu_choice
    when 1
      #go to Match History
      display_history_home
      history_landing(@history)
      back_to_main
    when 2
      #go to Random Civ
      display_randomize_home
      display_randomize
      back_to_main
    when 3
      # go to Civ Info
      display_info_home
      civ_info_landing
      back_to_main
    when 4
      # exit the app
      system("exit")
    end
  end

  def display_welcome
    puts "----------------------------------"
    puts "Welcome to AoE Performance Tracker"
    puts "----------------------------------"
  end
end

def back_to_main
  choice = @prompt.select(" ") do |menu|
    menu.choice "Main", 1
  end
  system ('clear')
end