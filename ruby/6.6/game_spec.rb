require_relative 'Game'

describe Game do
  let(:game) { Game.new(["v","i","n","c","e"]) }

  it "checks if players guess is correct and prints status" do
    game.guess("v")
    game.status
    expect(game.player_array).to eq ["v","_","_","_","_"]
  end

  it "tells you status of game" do
    game.status
    expect(game.counter).to eq 5
  end

  it "checks if wrong answer will take away from counter and prints status" do
    game.guess("f")
    game.status
    expect(game.counter).to eq 4
  end  
end