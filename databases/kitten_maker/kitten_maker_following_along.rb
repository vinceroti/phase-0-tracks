#PRESISTENT DATA!!!!

# Object Relational Mapping - Takes relational data (database with tables/rows/columns) and
# uses it in an Object Oriented Language

# Object Relational Management - Same as ORM

# Gem is a prewritten ruby/library 'require gem'

require 'sqlite3'
require 'faker' #lets you create fake data ruby file (names and ages)

# create SQlite3 database
db = SQLite3::Database.new("kittenfa.db")
db.results_as_hash = true #makes results as hash
#string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT 
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end
10000.times do
  create_kitten(db, Faker::Name.name, 0)
end
#explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#   puts "#{kitten['name']} is #{kitten['age']}"
# end