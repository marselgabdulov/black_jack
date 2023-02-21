class Card
  attr_reader :face, :suit, :value

  def initialize(**options)
    @face = options[:face]
    @suit = options[:suit]
    @value = options[:value]
  end

  def to_s
    "#{@face} of #{suit}"
  end
end
