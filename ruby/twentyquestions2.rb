#two player game
class Play
attr_writer :guess

def initialize(response)
@correct_answer = response	

end	
#limited guesses

#exclude repeated guesses

#feedback method that shows letter by letter
def feedback

	#WORK ON THIS 
#@correct_answer.chars.map {print "*"}

if @correct_answer == @guess

puts "Congratulations!"

end
end

def numberofguesses

@correct_answer.length


end


#Congrats

end

# Player 1 What is the secret word?
# response
puts "Player 1 What is the secret word?"
response = gets.chomp
play = Play.new(response)

#loop untill complete
guesses = play.numberofguesses
complete = 0

until complete == guesses
puts "Player 2 you have #{guesses} guesses, begin"
guess = gets.chomp
play.guess = guess

complete += 1

end