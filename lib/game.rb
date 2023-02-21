require_relative 'player'
require_relative 'deck'

class Game
  attr_accessor :dealer, :player, :bank, :deck, :current_player

  def initialize
    @player = nil
    @dealer = Player.new
    @bank = 0
    @deck = Deck.new
    @current_player = nil
  end

  def deal
    raise "Can't play without player" if @player.nil?

    @dealer.bet
    @player.bet
    @bank += 20
    @dealer.hand = Hand.new
    @player.hand = Hand.new
    @player.hand.open
    @current_player = @player
    2.times do
      @player.hand.append(@deck.deal_card)
      @dealer.hand.append(@deck.deal_card)
    end
  end

  def hit
    # (только если у пользователя на руках 2 карты). В этом случае игроку добавляется еще одна случайная карта, сумма очков пересчитывается, ход переходит дилеру. Может быть добавлена только одна карта.

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
