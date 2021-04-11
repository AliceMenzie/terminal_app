require_relative "index.rb"

first_arg, *command_arg = ARGV
ARGV.clear
case first_arg
when "--help"
  puts "--User Guide --"
  puts "What Command Line Arguments are Available? "
  puts "--help  "
  puts "How do I use this Application? "
  puts "Once running the application, features will be displayed on the menu, to access each element use the arrow keys to move to the feature you want to access 1. Match History 2. Randon Civ generation 3. Civ information 4. Exit, then press enter. Once a category has been selected continue moving through the app with a arrow keys and pressing enter when you wish to move to a different space in the application"
  puts "1. Match History"
  puts "Once in match history you have two option 1. add to match history and 2. View History, select which one you want view and press enter"
  puts " 1. Match History, you will then be asked to ever a civilisation and if you won or lost, if you do not meet the required input you will be prompted until it is entered correctly, only Age of Empires II Civilisations are accepted and the words won or lost"
  puts "2. View History will display all your previous entries"
  puts "2. Randon Civ generation"
  puts "will generate a civilisation at random"
  puts "3. Civ information"
  puts "will display a scroll screen which you can navigate using the arrows press enter on the civilisation you wish to access a table will then be generated with information relevant to that civilisation including: Civilisation, Army Type, Unique Unit, Unique Technology, Team Bonus and Civilisation Bonus"
else
  app = App.new
  app.run
end
