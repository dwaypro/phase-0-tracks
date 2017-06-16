#module Shout

#def self.yell_angrily(words)
#	p words + "!!!" + " : ("
#end

#def self.yelling_happily(words)
#	p words + "!!!" + " :)"	
#end

#end


#Shout.yell_angrily("Man what happened?")
#Shout.yelling_happily("Man that was awesome!")

module Shout

def yell_angrily(words)
	p words + "!!!" + " >:["
end

def yelling_happily(words)
	p words + "!!!" + " <(^.^)>"	
end

end


class Angry_Old_Man
include Shout
end

class Friend
include Shout
end

old_man = Angry_Old_Man.new
old_man.yell_angrily("WHY I AUGHTA")

friend = Friend.new
friend.yelling_happily("Way TO GO")
