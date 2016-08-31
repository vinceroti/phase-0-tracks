def greeting
  name1 = "Will"
  name2 = "Tom" 
  puts "Here is message one!"
  yield(name1, name2) 
  puts "Here is message two!"
end

greeting { |name1, name2| puts "What's up, #{name1} and #{name2}." }

