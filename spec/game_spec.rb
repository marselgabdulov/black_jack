require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/card'

describe Game do
  before do
    @game = Game.new
    @game.player = Player.new(name: 'Mad Max')
  end

  context 'responders' do
    it 'should respond to player' do
      expect(@game).to respond_to(:player)
    end

    it 'should respond to playing' do
      expect(@game).to respond_to(:playing)
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
  end

  context 'Instance methods' do
    describe '#deal' do
      it 'should raise empty player error' do
        @game.player = nil
        expect { @game.deal }.to raise_error(RuntimeError, "Can't play without player")
      end

      it 'should change game bank' do
        @game.deal
        expect(@game.bank).to eq(20)
      end

      it 'should initialize hands' do
        @game.deal
        expect(@game.player.hand.class).to be(Hand)
        expect(@game.dealer.hand.class).to be(Hand)
      end

      it 'should open player hand' do
        @game.deal
        expect(@game.player.hand.is_open).to be_truthy
      end
    end

    describe '#hit' do
      it 'should append card to players hand' do
        @game.deal
        @game.hit
        expect(@game.player.hand.cards.size).to eq(3)
      end
    end

    describe '#open' do
      it 'should open dealers hand' do
        @game.deal
        @game.open
        expect(@game.dealer.hand.is_open).to be_truthy
      end
    end
  end
end
