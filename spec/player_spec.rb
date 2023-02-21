require_relative '../lib/player'

describe Player do
  before do
    @player = Player.new
  end

  context 'Responders' do
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

  context 'Instance methods' do
    it 'should decrease player bank by 10' do
      @player.bet
      expect(@player.bank).to eq(90)
    end
  end
end
