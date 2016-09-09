#Shout Module Creation
#Release 1
# module Shout
#   def self.yell_angrily(words) #the methods of standalone modules must be defined on the self keyword
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end

#   self.yell_happily #correct deceleration in order to call module in IRB - String can be set to whatever in IRB or in file

#   self.yell_angrily("RAWR") #correct deceleration in order to call module in IRB

# end

module Shout
  def yell_angrily(words)
   puts words + "!!!" + " :("
  end

  def yell_happily(words)
   puts words + "!!!" + " :)"
  end
end

class Bear
  include Shout #allows access to module Shout
end

class Human
  include Shout #allows access to module Shout
end

bear = Bear.new
human = Human.new

bear.yell_angrily("Give me picnic baskets")
human.yell_happily("Okay, yogi")