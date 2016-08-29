# we need variables for hamster's name volume level of hamster's,
# fur color, weather hamster is good candidate for adoption, and 
# estimated age

puts "What is the hamster's name?"
  name = gets.chomp 

puts "How loud is the hamster? From (1 to 10)?"
  volume = gets.chomp.to_i
  
  while volume < 1 || volume > 10
    puts "Please enter a number between 1 and 10"
    volume = gets.chomp.to_i
  end

puts "What is the color of the hamster?"
  color = gets.chomp

puts "Est. Adoption level?"
  adoption_lvl = gets.chomp.to_i

puts "Est. age? *Enter 0 if you cannot estimate age or you think the hamster is a newborn.*"
  age = gets.chomp.to_i

#Inserts random name for hamster if no input from user
randName = ["Natasha","Thomas","Glenn","Margarita","Pat","Nick","Wilfred","Gladis"]
  if name == nil || name.length == 0
  name = randName[rand(randName.length)]
  end 


#If no age is inputted This statement will generate
if age == 0
 age = "Could not estimate age or is a newborn"
end


p "Hamster Name: #{name}."
p "Hamster is Rated #{volume} out of 10 for loudness."
p "#{name} is #{color}."
p "#{name} is rated at a #{adoption_lvl} for adoption level."
p "Age of #{name}: #{age}"
 