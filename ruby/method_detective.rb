# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p  "iNvEsTiGaTiOn".swapcase
p  "InVeStIgAtIoN"

p  "zom".insert(2, 'o') 
p  "zoom"

p "enhance".center(16)
p  "    enhance    "

p "Stop! You're under arrest!".upcase 
p "STOP! YOU'RE UNDER ARREST!"

suspects = " suspects"
p "the usual" + suspects.to_s 
p "the usual".insert(-1, ' suspects') 
p "the usual suspects"

p " suspects".insert(0, 'the usual') 
p "the usual suspects"

p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter".chomp('r')
p "The case of the disappearing last letter".slice(0..-2)
p "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice(1..-1)
p "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze
p "Elementary, my dear Watson!"

p "z".each_codepoint {|z| print z, ' ' }
p  122 
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count "a"
p 4