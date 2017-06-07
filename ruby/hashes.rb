# set up hash that will be used throughout the program.
# Initialize variables with empty values at first
# convert numeric data to integer

post = {

	name:     "",
	age:      "".to_i,
	children: "".to_i,
	theme:    "",


}

# User interface questions that will update the hash after each entry

puts "What is your name?"
post[:name] = gets.chomp

puts "How old are you?"
post[:age] = gets.chomp

puts "How many children do you have?"
post[:children] = gets.chomp

puts "For your theme what would you like to see?"
post[:theme] = gets.chomp

puts "Would you like to update an entry? Type 'name', 'age', 'children', 'theme' or 'none' to exit"
# provide the user with an opportunity to update an entry
# update hash entry depending on user response

response = gets.chomp
if response == "name"
   puts "What is your name?"
   post[:name] = gets.chomp
elsif response == "age"
	puts "How old are you?"
	post[:age] = gets.chomp
elsif response == "children"
	puts "How many children do you have?"
	post[:children] = gets.chomp 
elsif response == "theme"
	puts " What would you like to see in terms of theme?"
	post[:theme] = gets.chomp
else
	puts "Thank you"
end

# print the updated hash to the screen

p post