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
    player.hand.cards.clear
    2.times do
      player.hand.add(deck.draw)
    end
  end

  def hit player
    if @deck.cards.count == 0
      @deck.reshuffle
      player.hand.add(deck.draw)
    else
      player.hand.add(deck.draw)
    end
  end
end
