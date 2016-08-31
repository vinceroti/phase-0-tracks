#form hash

form = {
  name: "",
  address: "",
  email: "",
  phone: "",
  shade_blue: "",
  wallpaper: "",
  ombore: 0,
}

#wallpaper array to store data

wallpaper = []

#driver code

puts "Interior Design Application"
puts "Please enter the following information"

puts "Name"
form[:name] = gets.chomp

puts "Address"
form[:address] = gets.chomp

puts "Email"
form[:email] = gets.chomp

puts "Phone"
form[:phone] = gets.chomp

puts "What's your favorite shade of blue?"
form[:shade_blue] = gets.chomp

  puts "Wallpaper preferences (check any that apply):"
  puts "Paisley, Chevrons, Photorealistic woodsy scenes (with or without squirrels), Abstract woodsy scenes (no squirrels)"

loop do
  puts "When done, type done" 
  input = gets.chomp
  break if input == 'done'
  wallpaper << input
end

form[:wallpaper] = wallpaper

puts "Pick only one"
puts "Ombore is:"
puts "1. Fierce"
puts "2. So last season"
puts "3. Practically medieval in its appalling irrelevance"

ombore = 0

while ombore >= 4 || ombore <= 0
  puts "Enter a valid from number above"
  ombore = gets.chomp.to_i
end

form[:ombore] = ombore

form[:name] + form[:address]

p wallpaper
p form

#code testing

form[:name] + form[:address]

p wallpaper
p form