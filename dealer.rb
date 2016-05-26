require './card'
require './deck'
require './hand'
require './player'
require './dealer'

class Dealer

  attr_reader :deck

  def initialize
    @deck = Deck.new
  end

  def deal_hand_to player

    player.hand.add(@drawn)
    player.hand.add(@drawn)

  end

end
