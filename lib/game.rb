require_relative 'player'
require_relative 'deck'

class Game
  attr_accessor :dealer, :player, :bank, :deck

  def initialize
    @player = nil
    @dealer = Player.new
    @bank = 0
    @deck = Deck.new
  end

  def deal
    # take cards from deck and push 2 cards to player and dealer one by one
    puts 'game deal'
  end

  def hit
    puts 'game hit'
  end

  def stand
    puts 'game stand'
  end

  def open
    puts 'game open'
  end

  def restart
    # refresh bank and deck, check if player and dealer have enought money
    puts 'game restart'
  end
end
