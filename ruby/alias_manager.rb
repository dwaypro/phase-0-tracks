
#define hash outside of loop as well as other variables.

new_hash = {}

flag = "incomplete"
puts " Welcome to the encryptor program. would you like to coninue? y/n"
response = gets.chomp

until flag == "complete"

if response == "y"


puts "What is your first name?"
first_name = gets.chomp


puts"What is your last name?"
last_name = gets.chomp

first_last = first_name + " " + last_name
# add to hash 
new_hash[first_last] = first_name + " " + last_name


def vowel_changer(first_name, last_name)

name = first_name
name1 = last_name
str = name1 +" " + name
str_mod = str.downcase

vowels = ["a","e","i","o","u"]
consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
str_mod = str_mod.split('')

str_new = str_mod.map do |letters|
	if vowels.include?(letters)
		vowels.rotate(1)[vowels.index(letters)]
	else
		letters
	end

end
string = str_new.join

string = string.split('')
string_new = string.map do |chars|
	if consonants.include?(chars)
		consonants.rotate(1)[consonants.index(chars)]
	else
		chars
	end
end
new_string = string_new.join
cap_string = new_string.split (' ')
cap_string.map! { |word| word.capitalize}
caped_string = cap_string.join(' ')
p caped_string


end

vowel_changer(first_name, last_name)

puts "Do you have another entry? y/n"
answer = gets.chomp
if answer == "y"
	puts"loading"
	puts"......"
	puts"......"
	puts"......"
	else
	puts " complete"
	flag = "complete"
	puts "Displaying all known Aliases"
	puts"......"
	puts"......"
   p new_hash

	end

end
end

