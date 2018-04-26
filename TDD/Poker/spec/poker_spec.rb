# Card
# Deck
# Request a TA Code review
# Hand
# The logic of calculating pair, three-of-a-kind, two-pair, etc. goes here.
# Logic of which hand beats which would go here.
# Player
# Each player has a hand, plus a pot
# Player has methods to ask the user:
# Which cards they wish to discard
# Whether they wish to fold, see, or raise.
# Game
# Holds the deck
# Keeps track of whose turn it is
# Keeps track of the amount in the pot.


# Card

require 'card'
require 'rspec'
require 'deck'

RSpec.describe "poker" do

  describe Card do
    subject(:card) {Card.new(4, :hearts)}

    describe "initialize" do
      it "creates correct value and suit" do
        expect(card.value).to eq(4)

        expect(card.suit).to eq(:hearts)
      end
    end
  end

  describe Deck do
    subject(:deck) {Deck.new}

    describe "#initialize" do
      it "creates 52 cards " do
        expect(deck.instance_variable_get(:@dealer_deck).length).to eq(52)
      end

      it "makes dealer_deck with instances of cards" do
        expect(deck.instance_variable_get(:@dealer_deck).first.class).to eq(Card)
      end
    end

    describe "#shuffle" do
      it "shuffle the cards" do
        previous_order = deck.instance_variable_get(:@dealer_deck).dup

        deck.shuffle

        expect(previous_order).not_to eq(deck.instance_variable_get(:@dealer_deck))
      end
    end

    describe "#draw_card" do
      it "takes the top card from the dealer_deck" do
        top_card = deck.instance_variable_get(:@dealer_deck).last
        expect(deck.draw_card).to eq(top_card)
      end
    end

  end

end
