require_relative '../lib/player'

dealer = Player.new
puts dealer.name
puts dealer.bank

player = Player.new(name: 'Player')
puts player.name
puts player.bank
