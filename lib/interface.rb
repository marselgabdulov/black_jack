require_relative 'game'
require_relative 'player'

class Interface
  attr_accessor :game

  def initialize
    @game = Game.new
    @current_player = @game.current_player
  end

  def new_player(name)
    @game.player = Player.new(name: name.capitalize)
  end

  def hit
    @game.hit
  end

  def stand
    puts 'stand'
  end

  def open
    @game.open
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
end
