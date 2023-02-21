require_relative '../lib/hand'
require_relative '../lib/card'

card1 = Card.new(face: 'Ace', suit: '♥', value: 11)
card2 = Card.new(face: 10, suit: '♥', value: 10)
card3 = Card.new(face: 3, suit: '♥', value: 3)

hand = Hand.new
hand.open
hand.append(card1)
hand.append(card2)
hand.append(card3)
puts hand.to_s

hand2 = Hand.new
hand2.append(card1)
hand2.append(card2)

puts hand2.to_s
