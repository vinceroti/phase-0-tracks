# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end
# http://localhost:4567/powder?name=Vince for dynamic text
get '/powder' do
  erb :powder
end

get '/accept' do
  campuses = db.execute("SELECT campuses.city FROM campuses")
  response = ""
  campuses.each do |cities|
    response << "#{cities['city']}<br>"
  end
  response
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  city = db.execute("INSERT INTO campuses (city) VALUES (?)", params['city'])
  if city
    redirect '/accept'
  end
  redirect '/'
end

# add static resources