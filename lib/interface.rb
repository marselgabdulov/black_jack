require_relative 'game'
require_relative 'player'
require_relative 'deck'

class Interface
  attr_accessor :game

  def initialize
    @game = Game.new
  end

  def new_player(name)
    @game.player = Player.new(name: name)
  end

  def hit
    @game.hit
    return unless @game.playing == false

    begin
      restart
    rescue RuntimeError => e
      puts e.message
    end
  end

  def stand
    @game.stand
    return unless @game.playing == false

    begin
      restart
    rescue RuntimeError => e
      puts e.message
    end
  end

  def open
    @game.open
    return unless @game.playing == false

    begin
      restart
    rescue RuntimeError => e
      puts e.message
    end
  end

  def help
    puts "
    Commands:
    - hit
    - stand
    - open
    - help
    - quit
    "
  end

  def quit
    Kernel.exit
  end

  private

  def restart
    raise 'Some of players has no money' if @game.player.bank.zero? || @game.dealer.bank.zero?

    puts 'Would you like no play again? (y | n)'
    answer = gets.chomp
    if answer == 'y'
      @game.deal
    else
      quit
    end
  end
end
