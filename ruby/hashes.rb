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
client[:decor_theme] = gets.chomp

#puts out hash data
puts client

#allows user to update hash
puts "Would you like to update a key? (enter name of key)"

key_update = gets.chomp.to_sym

#conditional statement for the user to update hash

if key_update == :name
  client[:name] = gets.chomp
elsif key_update == :age
  puts "Age:" 
client[:age] = gets.chomp.to_i
elsif key_update == :address
  puts "Address:"
  client[:address] = gets.chomp
elsif key_update == :email
  puts "Email:"
  client[:email] = gets.chomp
elsif key_update == :phone
  puts "Phone:"
  client[:phone] = gets.chomp.to_i
elsif key_update == :children
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
elsif key_update == :decor_theme
  puts "Decor Theme:"
  decor_theme = gets.chomp
end

#displays code again for user to see
puts client