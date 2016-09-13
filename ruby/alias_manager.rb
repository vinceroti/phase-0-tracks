#Name Scrambler Application

#Pseudocode

#First we must collect the name
#Make it lower case
#Put it into an array split it and reverse it so the last name is first
#Split the array even further or make two different arrays for first and last
#Change all the vowels to the next vowel then do the same consonants
#bring arrays together after splitter and show user their new words

def scrambler(first, last, full_name_split)
  #new array for iteration
  scrambled_first = []
  scrambled_last = []

  #Iterates through array for first name in order to process AEIOU and Special Case Z=
  first.each do |x| 
    if x == "a"
      x = "e"
      elsif x == "e"
        x = "i"
      elsif x == "i"
        x = "o"
      elsif x == "o"
        x = "u"
      elsif x == "u"
        x = "a"
      elsif x == "z"
        x = "a"
      else 
        x = x.next 
    end
  scrambled_first << x 
  end

  #Iterates through array for last name in order to process AEIOU and Special Case Z
   last.each do |x| 
    if x == "a"
      x = "e"
      elsif x == "e"
        x = "i"
      elsif x == "i"
        x = "o"
      elsif x == "o"
        x = "u"
      elsif x == "u"
        x = "a"
      elsif x == "z"
        x = "a"
      else 
       x = x.next 
    end
  scrambled_last << x 
  end
  #fills $full_name array with scrambled first and last name, capitalizes both and joins them with a space.
  return scrambled_last.join('').capitalize + " " + scrambled_first.join('').capitalize
end

def name_array(name_array, full_name, new_full_name)
  name_array << full_name
  name_array << new_full_name
  return name_array
end

def name_hash(name_array) #displays new hash
  name_hash = Hash[*name_array]
  name_hash.each do |name, new_name|
    puts "#{name} is now #{new_name}"
  end
end

#empty array for data to fall into

#driver
puts "Hello and welcome to the 2016 Alias Generator®"
input = ""
name_array = []
#allows user to quit program and display all the names

while input != "quit"
  puts "Please enter a FULL name:"

  full_name_split = gets.chomp.downcase.split(' ')

  #if name isn't in two words it makes the user retype the name
  while full_name_split.length != 2
    puts "Please enter a FULL name (must be two words):"
    full_name_split = gets.chomp.downcase.split(' ')
  end

  full_name = full_name_split[0].capitalize + " " + full_name_split[1].capitalize #capitalizes at index's

  first = full_name_split.first.split('') #takes first of array and splits 
  last = full_name_split.delete_at(1).split('') #deletes last name and stores into last and splits it
  new_full_name = scrambler(first, last, full_name_split)
  p names = name_array(name_array,full_name, new_full_name)
  puts "Thank you! You're new name is #{new_full_name}"
  puts "Type 'Quit' if finished, if not hit enter"
  input = gets.chomp.downcase
end

name_hash(names)
puts "Goodbye."