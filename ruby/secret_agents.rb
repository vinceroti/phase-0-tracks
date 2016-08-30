# Take a string and iterate through each letter(spaces included) and forward each letter
# to the next one.

# encrypts the string provided


$alphabet = "abcdefghijklmnopqrstuvwxyza"

def encrypt(word)
  index = 0
  result = ""
  while index < $alphabet.length
    result = $alphabet[word]
    index += 1
  end

 p result[0].next
 p result[1].next
 p result[2].next

end

# Reserve the method of encrypt. 

def decrypt
  
end

encrypt("abc")
encrypt("zed")
#decrypt("bcd")
#decrypt("afe")