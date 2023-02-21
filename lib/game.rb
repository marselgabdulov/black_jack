require_relative 'player'
require_relative 'deck'

class Game
  attr_accessor :dealer, :player, :bank, :deck, :current_player, :winner

  def initialize
    @player = nil
    @dealer = Player.new
    @bank = 0
    @deck = Deck.new
    @current_player = nil
    @winner = nil
    @player_stands = 0
    @dealer_stands = 0
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
    show_hands
  end

  def hit
    puts 'hit'
  end

  def stand
    puts 'game stand'
  end

  def open
    @dealer.hand.open
    set_winner
    show_hands
  end

  def restart
    # refresh bank and deck, check if player and dealer have enought money
    puts 'game restart'
  end

  private

  def set_winner
    player_score = @player.hand.score
    dealer_score = @dealer.hand.score

    if (player_score <= 21 && dealer_score > 21) || (player_score <= 21 && player_score > dealer_score)
      player_won
    elsif (dealer_score <= 21 && player_score > 21) || (dealer_score <= 21 && dealer_score > player_score)
      dealer_won
    else
      @player.bank += 10
      @dealer.bank += 10
      puts 'Draw'
    end
    @bank = 0
  end

  def player_won
    @player.bank += 20
    puts "#{player.name} is winner"
  end

  def dealer_won
    @dealer.bank += 20
    puts 'Dealer is winner'
  end

  def show_hands
    puts '----------------'
    puts "#{@player.name}'s hand: #{@player.hand}"
    puts "Dealer's #{@dealer.hand}"
    puts '----------------'
  end
end
