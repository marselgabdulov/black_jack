require_relative '../lib/deck'

describe Deck do
  before do
    @deck = Deck.new
  end

  context 'Responders' do
    it 'should respond to pack' do
      expect(@deck).to respond_to(:pack)
    end

    it 'should respond to deal_card' do
      expect(@deck).to respond_to(:deal_card)
    end

    it 'should respond to replace_with' do
      expect(@deck).to respond_to(:replace_with)
    end
  end

  context 'Instance methods' do
    it 'should replace pack' do
      card1 = Card.new(face: 9, suit: '♥', value: 9)
      card2 = Card.new(face: 9, suit: '♥', value: 9)
      @deck.replace_with([card1, card2])
      expect(@deck.pack.size).to eq(2)
    end
  end
end
