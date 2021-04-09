require_relative 'index.rb'

first_arg, *command_arg = ARGV 
ARGV.clear
case first_arg
when '--help'
    puts "--User Guide --"
    puts "How do I run this application? "
    puts " aoe_pt.sh"
    puts "What Command Line Arguments are Available? "
    puts "--help  "
    puts "How do I use this Application? "
    puts "Once running the application, features will be displayed on the menu, to access each element use the arrow keys to move to the feature you want to access 1. Match History 2. Randmon Civ generation 3. Civ information 4. Exit, then press enter. Once a category has been selected continue moving through the app with a arrow keys and pressing enter when you wish to move to a different space in the application"
      
    
# when '--start', '-s'
#     app = App.new
#     app.run
else 
    app = App.new
    app.run

end
