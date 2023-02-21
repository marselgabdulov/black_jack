require_relative 'hand'

class Player
  attr_reader :name
  attr_accessor :bank, :hand

  def initialize(**options)
    @name = options[:name] ||= 'Dealer'
    @bank = 100
    @hand = Hand.new
  end

  def bet
    @bank -= 10
  end
end
