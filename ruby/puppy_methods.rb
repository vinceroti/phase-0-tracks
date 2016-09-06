class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(woof)
    woof.times do |x|
      puts "Woof! "
    end
  end

  def roll_over
    puts "Roll Over boy!"
  end

  def dog_years(year)
     dog_year = 7 * year
    puts "Your dog is #{year} in human years and in dog years is #{dog_year}."
  end

  def jump
    puts "Jump boy!"
  end

end

puppy = Puppy.new #creates an new instance of the class puppy

puppy.fetch("ball") #calls the fetch method from class puppy
puppy.speak(3) #calls the speak method from class puppy
puppy.roll_over #calls the roll_over method from class puppy
puppy.dog_years(3) #calls the dog_years method from class puppy
puppy.jump #calls the jump method from class puppy