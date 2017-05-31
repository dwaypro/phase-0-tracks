employees = 0
allergies = "incomplete"
vampire = "?"
certain = 0

	puts "How many employees will be processed"
	number = gets.chomp.to_i

until employees == number
 	puts "What is your name?"
	name = gets.chomp

	if name == "Drake Cula" || name == "Tu Fang"
		vampire = "definitely a vampire"
	end

	
	puts "How old are you?"
	age = gets.chomp

	puts "What year were you born?"
	year = gets.chomp
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	response = gets.chomp

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	health = gets.chomp

	if age.to_i != (2017 - year.to_i) && (response == "n" && health == "n")
		certain = 1
	end

	puts "Do you have any allergies? type done when finished"

until allergies == "done"
		allergy = gets.chomp

		if allergy == "sunshine"
			vampire = "definitely a vampire"
			
		elsif allergy == "done"
			puts "thank you"
			allergies = "done"
		end

	end

allergies = "incomplete"	
employees = employees +1 	

case

when vampire != "?"
	puts vampire 
when certain == 1
	puts "Almost certainly is a vampire"
when age.to_i == (2017 - year.to_i) && (response == "y" || health == "y")
	puts "Probably not a vampire"
when age.to_i != (2017 - year.to_i) && (response == "n" || health == "n")
	puts "probably a vampire"
else
	puts "results inconclusive"
end

vampire = "?"
certain = 0



end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."










