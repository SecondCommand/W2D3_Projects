require_relative 'card'
class Deck
  SUITS = [:hearts,:clubs,:spades,:diamonds]
  VALUES = (1..13)
  def initialize
    @dealer_deck = []
    make_deck
  end


  def shuffle
    @dealer_deck.shuffle!
    nil
  end

  def draw_card
    @dealer_deck.pop
  end

  private

  def make_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        @dealer_deck << Card.new(value,suit)
      end
    end
  end

end
