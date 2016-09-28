require 'sqlite3'

db = SQLite3::Database.new("carpool.db")

create_table_cars = <<-SQL
  CREATE TABLE IF NOT EXISTS cars(
    id INTEGER PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    year INT,
    name VARCHAR(255)
  )
SQL

create_table_users = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    email VARCHAR(255),
    location VARCHAR(255),
    ready BOOLEAN, 
    FOREIGN KEY (name) REFERENCES cars(name)
  )
SQL

# create a user table (if it's not there already)
db.execute(create_table_cars)
db.execute(create_table_users)

p db.execute("SELECT * FROM users") #shows all users
p db.execute("SELECT * FROM cars")
p db.execute("SELECT users.name, users.location, cars.make FROM users, cars WHERE users.name = cars.name") #shows all drivers


def create_cars(db)
  puts "Please enter your car info below"
  puts "Make"
  make = gets.chomp.capitalize
  puts "Model"
  model = gets.chomp.capitalize
  puts "Year (2010 or newer)"
  year = gets.chomp.to_i
  if year <= 2009
    puts "Sorry, your car must be 2010 or newer!"
    exit #closes app
  end
  puts "Owners name? (First and Last)"
  name = gets.chomp.downcase.split(' ')
  until name.length == 2
    puts "Name must be First and Last name"
    name = gets.chomp.downcase.split(' ')
  end
  name = name[0].capitalize + " " + name[1].capitalize

  puts "Thank you!"
  db.execute("INSERT INTO cars(make, model, year, name) VALUES (?, ?, ?, ?)", [make, model, year, name])
end

def create_users(db)
  counter = 1
  ready = "true"
  puts "Where are we going?"
  location = gets.chomp.capitalize

  puts "Please enter your how many people will be carpoolin' today? (Max of 3)"
  riders = gets.chomp.to_i

  until riders <= 3 && riders >= 1
    puts "Please only enter a number up to 3"
    riders = gets.chomp.to_i
  end

  until counter > riders
    puts "Name of Rider #{counter} (First and Last)"
    name = gets.chomp.downcase.split(' ')
    until name.length == 2
      puts "Name must be First and Last name"
      name = gets.chomp.downcase.split(' ')
    end
    name = name[0].capitalize + " " + name[1].capitalize

    puts "Age?"
    age = gets.chomp.to_i
    if age <= 17
      puts "Sorry, you must be 18 or older to use this app"
      exit #closes app
    end
    puts "Email, for when your ride is ready!"
    email = gets.chomp
    db.execute("INSERT INTO users(name, age, email, location, ready) VALUES (?, ?, ?, ?, ?)", [name, age, email, location, ready])
    counter += 1
  end

end

#driver code
puts "Carpoolin' App"
puts "Are you driving? (Y/N)"
driving = gets.chomp.downcase

until driving == "y" || driving == "n"
  puts "Please only use (Y/N)"
  driving = gets.chomp.downcase
end

if driving == "y"
  create_cars(db)
end

create_users(db)
puts "You will be getting an email when your carpool is ready!"