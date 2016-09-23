require 'sqlite3'

db = SQLite3::Database.new("carpool.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    email VARCHAR(255)
  )
SQL

# create a user table (if it's not there already)
db.execute(create_table_cmd)

def create_users(db)
  counter = 1
  puts "Please enter your how many people will be carpoolin' today? (Max of 3)"
  riders = gets.chomp.to_i

  until riders <= 3 && riders >= 1
    puts "Please only enter a number up to 3"
    riders = gets.chomp.to_i
  end

  until counter > riders
    puts "Name of rider #{counter}"
    name = gets.chomp
    puts "Age?"
    age = gets.chomp.to_i
    if age <= 17
      puts "Sorry, you must be 18 or older to use this app"
      exit #closes app
    end
    puts "Email, for when your ride is ready!"
    email = gets.chomp
    db.execute("INSERT INTO users(name, age, email) VALUES (?, ?, ?)", [name, age, email])
    counter += 1
  end

end

#driver code
puts "Carpoolin' App"
create_users(db)

