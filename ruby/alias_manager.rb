#Name Scrambler Application

#Pseudocode

#First we must collect the name
#Make it lower case
#Put it into an array split it and reverse it so the last name is first
#Split the array even further or make two different arrays for first and last
#Change all the vowels to the next vowel then do the same consonants
#bring arrays together after splitter and show user their new words

def name_splitter()
  
  #takes $full_name and splits it apart into two different arrays
  $first = $full_name.first
  $last = $full_name.delete_at(1)
  $first = $first.split('')
  $last = $last.split('')
end

def scrambler()
  #splits the array in order to access all of the data
  #new array for iteration
  scrambled_first = []
  scrambled_last = []

  #Iterates through array for first name in order to process AEIOU and Special Case Z=
  $first.each do |x| 
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
   $last.each do |x| 
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
  $full_name = scrambled_last.join('').capitalize + " " + scrambled_first.join('').capitalize
end

def name_array(names) #makes arrays for first and last name and for new name
  names << $first.join('').capitalize + " " + $last.join('').capitalize
  names << $full_name[0..-1]
end

def name_hash(names) #converts array to hash and iterates through to display new names
  hash_names = Hash[*names]
  hash_names.each do |name1, name2|
  puts "#{name1} is now #{name2}"
  end
end

#empty array for data to fall into
names = []

#driver
puts "Hello and welcome to the 2016 Alias Generator®"
input = ""

#allows user to quit program and display all the names
while input != "quit"
  puts "Please enter a FULL name:"
  $full_name = gets.chomp.downcase.split

  #if name isn't in two words it makes the user retype the name
  while $full_name.length != 2
    puts "Please enter a FULL name (must be two words):"
    $full_name = gets.chomp.downcase.split
  end

  name_splitter()
  scrambler()
  name_array(names)
  puts "Thank you! You're new name is #{$full_name}"
  puts "Type 'Quit' if finished, if not hit enter"
  input = gets.chomp.downcase
end

name_hash(names)
puts "Goodbye."