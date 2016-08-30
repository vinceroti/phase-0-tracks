# Gathering Data
current_year = 2016

p "Werewolf Inc Application Form"


p "How many employees will be processed?"
employees = gets.chomp.to_i
counter = 0 #counter for while loop in order to process multiple
#employees

while counter <= employees
  counter += 1

  p"Application for employee number #{counter}"  
   
  p "What is your name?"
  name = gets.chomp

  p "How old are you?"
  age = gets.chomp.to_i

  p "What year were you born?"
  year = gets.chomp.to_i

  p "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  bread = gets.chomp

  #conditional for bread to ensure yes or no answer

  while bread != 'yes' && bread != 'no'
    p "Please input 'yes' or 'no' only"
    bread = gets.chomp
  end

  p "Would you like to enroll in the company's health insurance? (yes/no)"
  insurance = gets.chomp

  #conditional for insurance to ensure yes or no answer

  while insurance != 'yes' && insurance != 'no'
    p "Please input 'yes' or 'no' only"
    insurance = gets.chomp
  end

#while loop for allergies and sunshine checker

  p "Name any allergies(one at a time)"
  p "Enter 'Done' when finished."

  done = false #bool for while loop
  sunshine = false #bool for sunshine, if true vampire they are!

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
    p "Definitely a vampire."
    elsif age + year != current_year && bread == 'no' && insurance == 'no'
    p "Almost certainly a vampire."
    elsif (sunshine == true) || age + year != current_year && bread == 'no' || insurance == 'no'
    p "Probably a vampire."
    elsif age + year == current_year && bread == 'yes' || insurance == 'yes'
      p "Probably not a vampire."
    else
      p "Results inconclusive."
  end #ends if statement

end #ends while loop for employees

