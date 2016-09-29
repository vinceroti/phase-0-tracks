#require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

#basic GET route
#add a query parameter
# GET / respond to get call on root
get '/' do
  name = params[:name] 
  "#{params[:name]} is #{params[:age]} years old"
end

# write a GET route with
# route parameters
get '/about/:person' do 
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning sinatra"
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

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

get '/student/:id' do 
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end