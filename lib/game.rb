require_relative 'player'
require_relative 'deck'

class Game
  attr_accessor :dealer, :player, :bank, :deck, :playing

  def initialize
    @player = nil
    @dealer = Player.new
    @bank = 0
    @deck = nil
    @playing = false
  end

  def deal
    raise "Can't play without player" if @player.nil?

    @deck = Deck.new
    @dealer.bet
    @player.bet
    @bank = 20
    @dealer.hand = Hand.new
    @player.hand = Hand.new
    @playing = true
    @player.hand.open
    2.times do
      @player.hand.append(@deck.deal_card)
      @dealer.hand.append(@deck.deal_card)
    end
    show_bank_info
    show_hands
  end

  def hit
    @player.hand.append(@deck.deal_card)
    if @player.hand.score > 21
      open
    else
      dealer_hit
    end
  end

  def stand
    puts 'Player chose to stand'
    dealer_hit
  end

  def open
    @dealer.hand.open
    set_winner
    show_hands
  end

  private

  def dealer_hit
    if @dealer.hand.score < 17
      @dealer.hand.append(@deck.deal_card)
    else
      puts 'Dealer chose to stand'
    end
    # open hands because player already hit or stand and dealer has three cards or chose to stand
    open
  end

  def set_winner
    if (@player.hand.score <= 21 && @player.hand.score > @dealer.hand.score) || @dealer.hand.score > 21
      player_won
    elsif (@dealer.hand.score <= 21 && @dealer.hand.score > @player.hand.score) || @player.hand.score > 21
      dealer_won
    else
      draw
    end
    @bank = 0
  end

  def player_won
    @player.bank += 20
    puts "#{player.name} is winner"
    @playing = false
  end

  def dealer_won
    @dealer.bank += 20
    puts 'Dealer is winner'
    @playing = false
  end

  def draw
    @player.bank += 10
    @dealer.bank += 10
    puts 'Draw'
    @playing = false
  end

  def show_hands
    puts '----------------'
    puts "#{@player.name}'s hand: #{@player.hand}"
    puts "Dealer's #{@dealer.hand}"
    puts '----------------'
  end

  def show_bank_info
    puts "You have #{@player.bank}"
    puts "Dealer has #{@dealer.bank}"
  end
end
