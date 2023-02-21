class Player
  attr_reader :name
  attr_accessor :bank, :hand

  def initialize(**options)
    @name = options[:name] ||= 'Dealer'
    @bank = 100
    @hand = [] # need class Hand
  end
end
