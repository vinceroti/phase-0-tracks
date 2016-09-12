class Game

 attr_reader :player_array #allows read access to @player_array
 attr_accessor :counter, :player_guess #allows read/write access to @counter and @player_guess

  def initialize(answer)
    @answer_array_length = answer.length
    @answer_array = answer
    @counter = @answer_array_length
    @player_array = Array.new(@answer_array_length, "_") #takes length of array and adds _ according to length
    
  end

  def status #joins array to display proper string and then splits it again 
    @player_array = @player_array.join('').capitalize
    puts "You have #{player_array} filled in so far with #{counter} tries remaining" 
    @player_array = @player_array.downcase.split('')
  end

  def guess
    @answer_array.each do |letter| #iterates through answer_array in order to determine if correct letter was picked
      if letter == @player_guess
        @player_array.delete_at(@answer_array.index(letter))
        @player_array.insert(@answer_array.index(letter), letter) #inserts letter that is correct at index
        @counter += 1 #cancels out try due to right answer or repeated
      end
    end
    @counter -= 1 #once loop is over, it minuses from loop
  end 
end

#driver code

puts "Welcome to Guesser 1.0!"
puts "Please enter a word to guess for"
answer = gets.chomp.downcase.split('') #splits user input into array
 
game = Game.new(answer)

until game.counter == 0
  puts "Please enter your guess"
  game.player_guess = gets.chomp.downcase
  game.guess
  game.status
  if game.player_array == answer
    puts "You have won!"
    game.counter = 0
  elsif game.counter == 0
    puts "You have lost, sorry :("  
  end
end

