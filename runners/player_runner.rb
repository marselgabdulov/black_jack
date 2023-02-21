require_relative '../lib/player'
require_relative '../lib/card'

card1 = Card.new(face: 'Ace', suit: '♥', value: 11)
card2 = Card.new(face: 10, suit: '♥', value: 10)

dealer = Player.new
puts dealer.name
puts dealer.bank

player = Player.new(name: 'Player')
puts player.name
puts player.bank
player.hand.append(card1)
player.hand.append(card2)
player.hand.open
puts player.hand.to_s
