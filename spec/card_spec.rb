require_relative '../lib/card'

describe Card do
  before do
    @card = Card.new(face: '10', suit: '♠', value: 10)
  end

  context 'responders' do
    it 'should respond to suit' do
      expect(@card).to respond_to(:suit)
    end

    it 'should respond to face' do
      expect(@card).to respond_to(:face)
    end

    it 'should respond to value' do
      expect(@card).to respond_to(:value)
    end
  end
end
