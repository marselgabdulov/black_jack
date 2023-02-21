require_relative '../lib/game'

game = Game.new
puts game.dealer.name
puts game.deal
puts game.hit
puts game.stand
puts game.open
puts game.restart
puts game.deck.deal_card.to_s
