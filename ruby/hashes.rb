#This is a program that will allow user input to enter the following
#The client's name, age, number of children, decor theme, etc
#We must prompt user to enter their data
#Convert input to right data type
#print out hash info after client has entered their data
#Allow user to update info after they have entered their info, if no updating skip over
#Print out all info over for user to see.

#hash for client's information 

client = {
  name: "",
  address: "",
  age: 0,
  email: "",
  phone: 0,
  children: false,
  decor_theme: "",
}

#driver code for user input

puts "Welcome to the Interior Designer Database"
puts "Please enter your client's information"

puts "Name:"
client[:name] = gets.chomp

puts "Age:" 
client[:age] = gets.chomp.to_i

puts "Address:"
client[:address] = gets.chomp

puts "Email:"
client[:email] = gets.chomp

puts "Phone:"
client[:phone] = gets.chomp.to_i

puts "Are there children? (Yes or No):"
client[:children] = gets.chomp.downcase

#ensuring yes or no answer code
until client[:children] == "yes" || client[:children] == "no"
  puts "'Yes' or 'No' only"
  client[:children] = gets.chomp.downcase
end

#checks input of child input
if client[:children] == 'yes'
  client[:children] = true
else
  client[:children] = false
end

puts "Decor Theme:"
decor_theme = gets.chomp
#debugging

puts client

puts "Would you like to update a key?"

key_update = gets.chomp.downcase

#case statement for the user to update it's code

case key_update
when :name
  client[:name] = gets.chomp
when :age
  puts "Age:" 
client[:age] = gets.chomp.to_i
  when :address
  puts "Address:"
  client[:address] = gets.chomp
when :email
  puts "Email:"
  client[:email] = gets.chomp
when :phone
  puts "Phone:"
  client[:phone] = gets.chomp.to_i
when :children
  puts "Are there children? (Yes or No):"
  client[:children] = gets.chomp.downcase
  #ensuring yes or no answer code
  until client[:children] == "yes" || client[:children] == "no"
    puts "'Yes' or 'No' only"
    client[:children] = gets.chomp.downcase
  end
  #checks input of child input
  if client[:children] == 'yes'
   client[:children] = true
  else
    client[:children] = false
  end
when :decor_theme
  puts "Decor Theme:"
  decor_theme = gets.chomp
end
