require_relative '../lib/card'

card = Card.new(face: 'Queen', suit: '♣', value: 10)

puts card.to_s
