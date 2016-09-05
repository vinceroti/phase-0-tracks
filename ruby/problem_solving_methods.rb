# Release 0

# Write a method that takes in two parameters.
# The first parameter is a an array of integers.
# The second parameter is a number that you want to search for.
# Set a loop counter to 0.
# While the loop counter is less than the length of the array, continue to loop through the array.
# If the number in the array is the same as the target number, return the index of that number.
# Otherwise, return nil.
# Increment the loop counter by 1.

arr = [42, 89, 23, 1]

def search_array(numbers, target)
  index = 0
  while index < numbers.length
    if numbers[index] == target 
      return index
    else
      nil
    end
    index += 1
  end
end

p search_array(arr, 42)
p search_array(arr, 89)
p search_array(arr, 23)
p search_array(arr, 1)
p search_array(arr, 100)
p search_array(arr, 200)

# Release 1

# Write method that takes one parameter.
# The parameter should be how long the Fibonacci is.
# Start out with an array of 0 and 1.
# Add numbers to the array until the length of the array equals the number of the parameter.
# Add the 0 and 1 and store the result in the array.
# Check to see how many numbers are in the array.
# If the amount of numbers in the array equals the number of the parameter, stop and return the array.
# If the amount of numbers in the array is less than the number of the parameter add the last two numbers in the array and store that number in the array.
# Check the array again to see how many numbers are in it.

# Output - the array should fill in according to the parameter based on our fibonacci alogrithm.

def fib(integer)
  array = [0, 1]
  until array.length == integer
  array << array[-1] + array[-2]
  end
  p array
end

fib(100)

# =============================

# Learning about insertion sort

# Insertion sort algorithm
# Efficient for small number of elements

# Input 
# [1, 5, 3, 4, 6, 3]

# Expected output
# [1, 3, 3, 4, 5, 6]

def insertion_sort(array)
    final = [array[0]] #Final = 1, renames array
    array.delete_at(0) #Delete the array value at index 0
    # main code
    for i in array 
        final_index = 0 #intializes loop counter
        while final_index < final.length #while counter is less then the length of the array
            if i <= final[final_index] #if number in the array is less then or equeals to final index/counter then sort index in front.
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1 #else if final index/counter is equal to length -1 then insert number behind that index
                final.insert(final_index+1,i)
                break
            end
            final_index+=1 #increment loop by one
        end
    end
    # output
    final
end
array = [1, 5, 3, 4, 6, 3]
puts insertion_sort(array)

# =============================

# Release 2

# Write a sorting method.
# The method should take in an array as a parameter.
# Create an array
# Create a loop that sorts through the array and sorts by index based on which index value is higher.
# If loop determines that the index is of higher value, it will move the data over.
# Repeats until array is sorted by acsending order
# Show how array is sorted from smallest to greatest

# Are we not supposed to do something like the following?
def sort(array)
  empty_array = []
  empty_array << array.sort
  p empty_array
end

sort([203, 2, 15, 124, 6])