require_relative '../lib/interface'

describe Interface do
  before do
    @interface = Interface.new
  end

  context 'responders' do
    it 'should respond to hit' do
      expect(@interface).to respond_to(:hit)
    end

    it 'should respond to stand' do
      expect(@interface).to respond_to(:stand)
    end

    it 'should respond to open' do
      expect(@interface).to respond_to(:open)
    end

    it 'should respond to help' do
      expect(@interface).to respond_to(:help)
    end

    it 'should respond to quit' do
      expect(@interface).to respond_to(:quit)
    end
  end
end
