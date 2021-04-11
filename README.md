### AoE Performance Tracker 

# About 

This is a terminal application, developed as part of the CoderAcademy Fast track course. 

# How To Download and Run 
Installation
1. Download from Github thruogh the download zip option
2. Require dependencies through installing gems, in your terminal run `gem install  tty-prompt httparty tty-table`
3. In your terminal move into the directory terminal_app, next run the command `./aoe_pt.sh`, the program should then start.
For further assistance on how to use the app you can run `./aoe_pt.sh --help` 


# How do I use this Application? 

Once running the application, features will be displayed on the menu, to access each element use the arrow keys to move to the feature you want to access 1. Match History 2. Random Civ generation 3. Civ information 4. Exit, then press enter. Once a category has been selected continue moving through the app with a arrow keys and pressing enter when you wish to move to a different space in the application
1. Match History
Once in match history you have two option 1. add to match history and 2. View History, select which one you want view and press enter
 1. Match History, you will then be asked to ever a civilisation and if you won or lost, if you do not meet the required input you will be prompted until it is entered correctly, only Age of Empires II Civilisations are accepted and the words won or lost
2. View History will display all your previous entries
2. Random Civ generation
will generate a civilisation at random
3. Civ information
will display a scroll screen which you can navigate using the arrows press enter on the civilisation you wish to access a table will then be generated with information relevant to that civilisation including: Civilisation, Army Type, Unique Unit, Unique Technology, Team Bonus and Civilisation Bonus



# Manual Testing

Test 1: Check for correct running of feature: `Civ Info`

Test Case A: 
Run the application in the terminal via prompt ./aoe_pt.sh
Via the arrow keys select, then enter via the enter key `Civ Info`
 Expectation: display will show title `Civ Info Activated` and 6 civilisations 
Aztecs
  Britons
 Byzantines
Celts
 Chinese
 Franks
	Though the use of the arrow keys the display will change listing a total of 32. 

Test Case B:  
Run the application in the terminal via prompt ./aoe_pt.sh
Via the arrow keys select, then enter via the enter key `Civ Info`
Via the arrow keys select, then enter via the enter key `Aztecs`
Expectation 1: The screen will initially display title `Civ Info Activated`, The civ selected `Aztecs`, and a message `This might take a minute … retrieving data ...`
Expectation 2: Once data has been retrieved the display will change to a table output with: 
 
Civilisation:  Aztecs
Army Type: Infantry and Monk
Unique Unit: Jaguar Warrior
Unique Technology: Garland Wars 
Team Bonus: Relics generate +33% gold
Civilisation Bonus: Villagers carry +5 

And `Main`option.

Test 2: Check for correct running of feature: `Match History`

Test Case A: 
Run the application in the terminal via prompt ./aoe_pt.sh
Via the arrow keys select, then enter via the enter key `Match History`
Via the arrow keys select, then enter via the enter key `Update History`
Enter test input “Aztecs”
Enter test input “win”
	Expectation: The screen will display {"aztecs"=>"win"}, History Successfully updated and And `Main`option.

 
Test Case B: 
Run the application in the terminal via prompt ./aoe_pt.sh
Via the arrow keys select, then enter via the enter key `Match History`
Via the arrow keys select, then enter via the enter key `Update History`
Enter test input “Aztecs”
Enter test input “win”
Via the arrow keys select, then enter via the enter key `Main`
Via the arrow keys select, then enter via the enter key `Match History`
Via the arrow keys select, then enter via the enter key `Update History`
Enter test input “Byzantines”
Enter test input “loss”
Via the arrow keys select, then enter via the enter key `Main`
Via the arrow keys select, then enter via the enter key `Match History`
Via the arrow keys select, then enter via the enter key `View History`
Expectation: The screen will display {"aztecs"=>"win"} {"Byzantines"=>"loss"} and And `Main`option