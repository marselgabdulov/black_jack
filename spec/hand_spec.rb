require_relative '../lib/hand'
require_relative '../lib/card'

describe Hand do
  before do
    @hand = Hand.new
  end

  context 'Responders' do
    it 'should respond to cards' do
      expect(@hand).to respond_to(:cards)
    end

    it 'should respond to append' do
      expect(@hand).to respond_to(:append)
    end

    it 'should respond to score' do
      expect(@hand).to respond_to(:score)
    end

    it 'should respond to is_open' do
      expect(@hand).to respond_to(:is_open)
    end
  end

  context 'Instance methods' do
    before do
      @hand = Hand.new
      @card1 = Card.new(face: 9, suit: '♥', value: 9)
      @card2 = Card.new(face: 10, suit: '♥', value: 10)
      @card3 = Card.new(face: 'Ace', suit: '♥', value: 11)
    end

    it 'should count score with aces when ace is 11' do
      @hand.append(@card2)
      @hand.append(@card3)
      expect(@hand.score).to eq(21)
    end

    it 'should count score with aces when ace is 1' do
      @hand.append(@card1)
      @hand.append(@card2)
      @hand.append(@card3)
      expect(@hand.score).to eq(20)
    end
  end
end
