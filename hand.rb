require './card'
require './deck'
require './hand'
require './player'
require './dealer'


class Hand
  attr_reader :cards, :value

  def initialize
    @cards = []
  end

  def add *new_cards
    @cards += new_cards
  end

  def value
    base = cards.map { |c| c.value }.reduce(:+)
    if cards.any? { |c| c.rank == :A } && base <= 11
      base + 10
    else
      base
    end
  end

  def blackjack?
    value == 21
  end

  def busted?
    value > 21
  end

  def to_s
    cards.map { |c| c.to_s }.join ", "
  end

  def showing
    @cards.first.to_s
  end

  def beats? h2
    unless busted? do
      if @value > h2.value
        true
      else
        false
      end
    end
  end

  end


end