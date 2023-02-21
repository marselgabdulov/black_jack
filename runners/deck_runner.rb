require_relative '../lib/deck'

deck = Deck.new

puts deck.pack
puts '-------- last card --------'
puts deck.deal_card
