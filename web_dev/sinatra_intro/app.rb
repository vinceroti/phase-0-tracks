# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "123 Crazy Street, Lombard, IL 60148"
end

get '/great_job/' do
  name = params[:name]
  if name
    "Good job, #{person_3}!"
  else
    "Good job!"
  end
end

get '/:number_1/add/:number_2' do 
  number_1 = params[:number_1]
  number_2 = params[:number_2]

  answer = number_1.to_i + number_2.to_i

  answer.to_s
end

get '/search/:name' do
  param = params[:name].capitalize
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    name = student['name'].split(' ')
    if name[0] == param || name[1] == param || name[2] == param || name == param.split(' ') #allows searching of first, last, suffix and full name!!!
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
  end
  response
end
