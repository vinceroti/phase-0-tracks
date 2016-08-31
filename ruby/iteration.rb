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

int_arry = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10}
p hash #shows data of hash
p int_arry #shows data of array

#deletes numbers if less then 5
int_arry.delete_if {|number| number < 5}
hash.delete_if {|num, key| key < 5}

p int_arry #shows data is deleted
p hash #shows data is deleted

#filters array and hashes instead of deleting so we need new data structures
int_arry2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
hash2 = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10}

p int_arry2 #shows data of new array
p hash2 #shows data of new hash

p int_arry2.select { |number| number <= 5}
p hash2.select { |num, key| key <= 5}

p int_arry2 #shows data is intact
p hash2 #shows data is intact

p int_arry2.take_while { |number| number <= 5}
p hash2.select { |num, key| key <= 5 }

p int_arry2 #shows data is intact
p hash2 #shows data is intact

p int_arry2.reject! { |number| number}
p hash2.reject! { |num, key| key }