require_relative '../lib/game.rb'

describe Game do
  before do
    @game = Game.new
  end

  context 'responders' do
    it 'should respond to player' do
      expect(@game).to respond_to(:player)
    end

    it 'should respond to dealer' do
      expect(@game).to respond_to(:dealer)
    end

    it 'should respond to deck' do
      expect(@game).to respond_to(:deck)
    end

    it 'should respond to bank' do
      expect(@game).to respond_to(:bank)
    end

    it 'should respond to deal' do
      expect(@game).to respond_to(:deal)
    end

    it 'should respond to hit' do
      expect(@game).to respond_to(:hit)
    end

    it 'should respond to stand' do
      expect(@game).to respond_to(:stand)
    end

    it 'should respond to open' do
      expect(@game).to respond_to(:open)
    end

    it 'should respond to restart' do
      expect(@game).to respond_to(:restart)
    end
  end
end
