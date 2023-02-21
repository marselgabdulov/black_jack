require_relative '../lib/game'
require_relative '../lib/player'

game = Game.new
game.player = Player.new(name: 'Mad Max')
puts game.player.name
puts game.deal
puts game.player.hand.to_s
puts game.dealer.hand.to_s
puts game.hit
puts game.stand
puts game.open
puts game.restart
