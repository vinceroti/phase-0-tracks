#Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # put items into array and SPLIT them
  # have empty hash to SHOVEL items into 
  # set default amount to 1
  # print the list to the console 
# output: display hash with descriptive(carrots, apples, etc) items/keys that show the quantity of each item

# Method to add an item to a list
# input: item name and optional quantity which takes data from hash
# steps: define a method and it takes in grocery_hash
#        allow for entry of new items and quantity
# output: show updated grocery_hash

# Method to remove an item from the list
# input: grocery_hash from list_creator method
# steps: remove KEY from grocery_hash using iteration
# output: show updated grocery_hash

# Method to update the quantity of an item
# input: grocery_hash from list_creator method and what 
# steps: add or remove quantity of KEY from grocery_hash using iteration
# output: show updated grocery_hash

# Method to print a list and make it look pretty
# input: takes in grocery_hash
# steps: iterate through grocery_hash and use INTERPERLATION to show the KEY and VALUE in pretty way
# output: shows step above

list = "apples oranges grapes apples milk paper"

def list_creator(inputed_list)
  grocery_hash = {}
  grocery_list = inputed_list.split

  grocery_list.each do |item| 
    grocery_hash[item] = grocery_hash[item].to_i + 1
  end

  p grocery_hash

end

list_creator(list)