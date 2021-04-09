require_relative 'index.rb'

command_arg = ARGV 
    if command_arg[0] == '--help'
        puts "--User Guide --"
        puts "How do I run this application? "
        puts " aoe_pt.sh"
        puts "What Command Line Arguments are Available? "
        puts "--help,  "
        puts "How do I use this Application? "
    else 
        app = App.new
        app.run

    end
