require_relative 'hand'
require_relative 'constants'

class Player
  include Constants
  attr_reader :name
  attr_accessor :bank, :hand

  def initialize(**options)
    @name = options[:name] ||= 'Dealer'
    @bank = PLAYERS_BANK
    @hand = Hand.new
  end

  def bet
    @bank -= BET_VALUE
  end
end
