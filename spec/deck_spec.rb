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
end
