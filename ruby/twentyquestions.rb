#Welcome to twenty questions!
#Player 1 please enter a word, player 2 NO PEAKING
#*DING!* Player 1 has entered a word! and given a hint!
#Player 2 you have twenty questions to get the word correct!
class Player1
	
end

class Player2	
def initialize
p "good luck!"
end



def guess_checker(guess, response)
guess_bank = []	
attempt = 0
until guess == response || attempt == response.length
 input = gets.chomp

if input == response
 	guess = response
 	p "congratulations! the answer was #{guess}!"
 
 elsif guess_bank.include?(input)
   puts "You already guessed that! your  previous guesses:" 
   p guess_bank 
 
 else 	
 guess_bank << input	
 p "Please try again"
 number = response.length - 1 -attempt
 p "you have #{number} guesses left!" 
attempt += 1
response.each_char {|c| print c = "*" }
end
end

end


puts "Welcome to twenty questions!"
player2 = Player2.new
puts "Player 1 please enter a word to begin!"
response = gets.chomp

puts "Ok Player 2 you have a few guesses, first guess doesnt count"
guess = gets.chomp

player2.guess_checker(guess, response)


end
