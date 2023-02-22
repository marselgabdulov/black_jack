require_relative 'constants'

class Hand
  include Constants

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
                if @score + card.value > MAX_SCORE
                  1
                else
                  11
                end
              else
                card.value
              end
  end
end
