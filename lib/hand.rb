class Hand
  attr_reader :is_open
  attr_accessor :score, :cards

  def initialize
    @score = 0
    @cards = []
    @is_open = false
  end

  def append(card)
    @cards.push(card)
    count_score(card)
  end

  def open
    @is_open = true
  end

  def to_s
    report = ''
    if @is_open
      @cards.each { |card| report += "#{card}, " }
      report += "score: #{@score}"
    else
      report = 'Hand is hidden'
    end
    report
  end

  private

  def count_score(card)
    @score += if card.face == 'Ace'
                if @score + card.value > 21
                  1
                else
                  11
                end
              else
                card.value
              end
    # not sure where it should raise
    # raise 'Score greater than 21' if @score > 21
  end
end
