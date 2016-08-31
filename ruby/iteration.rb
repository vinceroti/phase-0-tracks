#release 0

def greeting
  name1 = "Will"
  name2 = "Tom" 
  puts "Here is message one!"
  yield(name1, name2) 
  puts "Here is message two!"
end

greeting { |name1, name2| puts "What's up, #{name1} and #{name2}." }

#release 1

fruit = ["apples", "strawberries", "bananas"]
spoiled = []

video_games = { "Halo" => "good", "Overwatch" => "great", "Call Of Duty" => "alright"}

p fruit
p spoiled

#modified with shovel operator

fruit.each do |food|
  puts "#{food} are pretty tasty!"
  food += " are spoiled"
  spoiled << food
  puts "but now its spoiled :("
end

p fruit
p spoiled

#modified with .map! instead

  fruit.map! do |food|
  puts "#{food} are pretty tasty!"
  puts "but now its spoiled :("
  food += " are spoiled"
end

p fruit

video_games.each do |game, rating|
  puts "#{game}, we think is #{rating}."
end


#release 2