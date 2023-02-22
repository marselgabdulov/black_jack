require_relative 'card'
require_relative 'constants'

class Deck
  include Constants

  attr_accessor :pack

  FACES = [*(2..10), 'Jack', 'Queen', 'King', 'Ace'].freeze
  SUITS = %w[♠ ♥ ♦ ♣].freeze

  def initialize
    @pack = create_pack
  end

  def deal_card
    @pack.pop
  end

  def replace_with(new_pack)
    @pack = new_pack
  end

  private

  def create_pack
    cards = []

    FACES.each do |face|
      value = case face
              when Integer
                face
              when 'Ace'
                ACE_POINTS
              else
                NOBLE_POINTS
              end
      SUITS.each { |suit| cards << Card.new(face: face, suit: suit, value: value) }
    end
    cards.shuffle!
  end
end
