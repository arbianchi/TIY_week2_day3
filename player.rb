require './card'
require './deck'
require './hand'
require './player'
require './dealer'

class Player

  attr_reader :wallet, :hand

  def initialize wallet = nil
    @wallet = wallet
    @hand = Hand.new
  end

  def wins winnings
    @wallet += winnings
  end

  def broke?
    if wallet <= 0
      true
    else
      false
    end
  end

end
