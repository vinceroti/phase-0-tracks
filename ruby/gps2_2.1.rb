def make_list
  puts "Enter a new list: "
  new_list = gets.chomp
  list_arr = new_list.split(' ')
  list_hash = {}

  quant = 0
  list_arr.each do |i|
  list_hash[i] = quant
  end

  list_hash
end

def add_item(list_name, item, new_quant) 
    if list_name.has_key?(item)
      list_name
    else
      list_name[item] = new_quant
    end
    list_name
end

def remove_item(list_name, item)
  list_name.delete(item)
  list_name
end

def update_quantity(list_name, item, quantity)
  if list_name.has_key?(item)
    list_name[item] += quantity
  end
end

def print_list(list_name)
  list_name.each {|key,value|
    puts "#{key}; qty: #{value}"
  }
end

groc_list = make_list

puts " "

add_item(groc_list, "Lemonade", 2)
add_item(groc_list, "Tomatoe", 3)
add_item(groc_list, "Onion", 1)
add_item(groc_list, "Ice cream", 4)

remove_item(groc_list, "Lemonade")

update_quantity(groc_list, "Ice cream", 1)

print_list(groc_list)