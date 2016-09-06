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

  def initialize
    puts "Initializing new puppy instance ..."
  end
end

puppy = Puppy.new #creates an new instance of the class puppy

puppy.fetch("ball") #calls the fetch method from class puppy
puppy.speak(3) #calls the speak method from class puppy
puppy.roll_over #calls the roll_over method from class puppy
puppy.dog_years(3) #calls the dog_years method from class puppy
puppy.jump #calls the jump method from class puppy

#Self Made Class Creation
# ---------------------------------

class Car

  def start_car
    puts "You started the car!"
  end

  def run_car(mph)
    puts "You are driving #{mph} mph, wow!"
  end

  def stop_car
    puts "You have turned off the car!"
  end
end

car = Car.new #creates a new instance of car class
car_array = Array.new #crates a new; instance of an array to put data into

while car_array.length < 50 #runs loop 50 times and puts the car class into array 50 times
  car_array << Car
end

car_array.each do |x| #iterates over array in order to run each class method 50 times
  car.start_car
  car.run_car(50)
  car.stop_car
end