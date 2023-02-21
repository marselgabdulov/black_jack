class Interface

  def initialize
    # need class Game
  end

  def new_player(name)
    # need class Player
    # after creating new player game should deal
  end

  def hit
    puts 'hit'
  end

  def stand
    puts 'stand'
  end

  def open
    puts 'open'
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
