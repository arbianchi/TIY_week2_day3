require './card'
require './deck'
require './hand'
require './player'
require './dealer'


class Hand
  attr_reader :cards

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

  def beats? player
    (player.busted? && !busted?) || (!player.busted? && !busted? && (value > player.value))
    # binding.pry #why won't this work?
  end




end
