

class Santa


#reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

def speak
	puts "Ho, ho, ho! Haaaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
	puts "That was a good #{cookie_type}"
end

def initialize(gender, ethnicity)
	@gender = gender
	@ethnicity = ethnicity

	puts "Initializing Santa instance..."
	end

def gender
	@gender
end
def gender=(new_gender)
	@gender = new_gender
end


def celebrate_birthday
  @age = @age.to_i + 1
 puts"Santa is now #{@age}"

end

def age
	@age
end

def reindeer_ranking
   @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

end

def get_mad_at (reindeer)
	p "Santa is mad at #{reindeer}"
	
   index = 0	
   duration = reindeer_ranking.length
 until index == duration
    ind_deer = reindeer_ranking[index]
    if ind_deer == reindeer
    	p "bad #{reindeer}!!!"	
    	reindeer_ranking.delete(reindeer)   
    	@reindeer_ranking << reindeer
    	p @reindeer_ranking
    else
    end
 	index += 1
 end
	
end
	

end


santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")


santa = Santa.new("male", "white")
santa.eat_milk_and_cookies("brownie")
santa.speak

santa.celebrate_birthday
santa.celebrate_birthday
santa.celebrate_birthday
santa.celebrate_birthday
santa.celebrate_birthday



santa.get_mad_at("Vixen")

santa.gender = "male"

