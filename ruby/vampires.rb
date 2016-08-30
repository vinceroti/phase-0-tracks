# var, bools, and other things
current_year = 2016
done = false #bool for while loop
sunshine = false #bool for sunshine, if true vampire they are!
counter = 0 #counter for while loop in order to process multiple
#employees

puts "Werewolf Inc Application Form"


puts "How many employees will be processed?"
employees = gets.chomp.to_i

#employee counter loop

until counter >= employees
  counter += 1

  puts "Application for employee number #{counter}"  
   
  puts  "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  bread = gets.chomp

  #conditional for bread to ensure yes or no answer

  while bread != 'yes' && bread != 'no'
    puts "Please input 'yes' or 'no' only"
    bread = gets.chomp
  end

  puts "Would you like to enroll in the company's health insurance? (yes/no)"
  insurance = gets.chomp

  #conditional for insurance to ensure yes or no answer

  while insurance != 'yes' && insurance != 'no'
    puts "Please input 'yes' or 'no' only"
    insurance = gets.chomp
  end

#while loop for allergies and sunshine checker

  puts "Name any allergies(one at a time)"
  puts "Enter 'Done' when finished."

  while done == false
      allergies = gets.chomp
      if allergies == 'sunshine' || allergies ==  'Sunshine'
        sunshine = true
        done = true
      elsif allergies == 'Done' || allergies ==  'done'
        done = true
    end
  end

  if name == 'Drake Cula' || name == 'Tu Fang'
    puts "Definitely a vampire."
    elsif age + year != current_year && bread == 'no' && insurance == 'no'
    puts "Almost certainly a vampire."
    elsif (sunshine == true) || age + year != current_year && bread == 'no' || insurance == 'no'
    puts "Probably a vampire."
    elsif age + year == current_year && bread == 'yes' || insurance == 'yes'
      puts "Probably not a vampire."
    else
      puts "Results inconclusive."
  end #ends if statement

    done = false #resets bool for next employee
    sunshine = false #resets bool for next employee

end #ends until loop for employees

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

