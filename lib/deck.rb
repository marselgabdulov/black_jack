require_relative 'card'

class Deck
  attr_accessor :pack

  FACES = [*(2..10), 'Jack', 'Queen', 'King', 'Ace'].freeze
  SUITS = %w[♠ ♥ ♦ ♣].freeze

  def initialize
    @pack = create_pack
  end

  def deal_card
    @pack.pop
  end

  def replace_with(new_deck)
    @pack = new_deck
  end

  private

  def create_pack
    cards = []

    FACES.each do |face|
      value = case face
              when Integer
                face
              when 'Ace'
                11
              else
                10
              end
      SUITS.each { |suit| cards << Card.new(face: face, suit: suit, value: value) }
    end
    cards.shuffle!
  end
end
