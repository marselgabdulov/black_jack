require_relative '../lib/player'

describe Player do
  before do
    @player = Player.new
  end

  context 'responders' do
    it 'should respond to name' do
      expect(@player).to respond_to(:name)
    end

    it 'should respond to bank' do
      expect(@player).to respond_to(:bank)
    end

    it 'should respond to hand' do
      expect(@player).to respond_to(:hand)
    end
  end
end
