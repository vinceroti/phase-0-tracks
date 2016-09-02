#Name Scrambler Application

#Pseudocode

#First we must collect the name
#Make it lower case
#Put it into an array split it and reverse it so the last name is first
#Split the array even further or make two different arrays for first and last
#Change all the vowels to the next vowel then do the same consonants
#bring arrays together after splitter and show user their new words

def name_spliter(full_name)
  $full_name = gets.chomp.downcase
  $full_name = $full_name.split

  #takes first index of array moves it to new array and deletes it
  first = $full_name.first
  last = $full_name.delete_at(1)
  first = first.split('')
  last = last.split('')
  #splits the array in order to access all of the data
  #new array for iteration
  scrambled_first = []
  scrambled_last = []


  #Iterates through array for first name in order to process AEIOU and Special Case Z
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

  $full_name = scrambled_last.join('').capitalize + " " + scrambled_first.join('').capitalize
end

def data(full_name)
  names = {}
  names[:name] = $full_name 
end
#driver
puts "Hello and welcome to the 2016 Alias Generator®"

puts "Please enter your name:"
puts "Type 'Quit' when finished"

name_spliter($full_name)
data($full_name)

puts "Thank you! You're new name is #{$full_name}"


puts "Goodbye."