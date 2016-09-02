#Name Scrambler Application

#Pseudocode

#First we must collect the name
#Make it lower case
#Put it into an array split it and reverse it so the last name is first
#Split the array even further or make two different arrays for first and last
#Change all the vowels to the next vowel then do the same consonants

def name_spliter(full_name)

  first = full_name.first
  last = full_name.delete_at(1)
  first = first.split('')
  last = last.split('')

  p first
  p last

  #first.map! { |aeiou| aeiou =~ /[aeiou]/}
  last.map! { |letter| letter.next } 

 # first.select { |aeiou| aeiou}

   p first
   p last
end

#driver
puts "Hello and welcome to the 2016 Alias Generator®"

puts "Please enter your name:"
full_name = gets.chomp.split

name_spliter(full_name)

puts "Thank you! You're new name is #{full_name}"
puts "Goodbye."