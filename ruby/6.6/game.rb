class Game
 attr_accessor :counter, :player_guess, :player_array

  def initialize(answer)
    @answer_array = answer
    @player_array = []
    @counter = @answer_array.length
  end

  def guess
    until game.counter == 0
      @answer_array.each do |letter|
        if letter == @player_guess
          @player_array << letter
          p @player_array
        end
      end
      @counter -= 1
    end
  end 
end

#driver code

puts "Welcome to Guesser 1.0!"
puts "Please enter a word to guess for"
answer = gets.chomp.downcase.split('')

game = Game.new(answer)

until game.counter == 0
  puts "Please enter your guess"
  game.player_guess = gets.chomp.downcase
  game.guess
  if game.player_array == answer
    puts "You have won!"
    game.counter = 0
  end
end

