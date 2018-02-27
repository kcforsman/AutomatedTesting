

require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
    describe "You can create a Deck instance" do

      it "Can be created" do
        deck = Deck.new

        deck.must_be_instance_of Deck
      end

      it "has 52 card objects as attributes" do
        deck = Deck.new

        cards = deck.deck

        cards.length.must_equal 52
        cards.each do |card|
          card.must_be_instance_of Card
        end
      end
    end

    describe "shuffle" do
      it "can shuffle the deck" do
        deck = Deck.new

        deck.shuffle
        cards = deck.deck

        cards.must_be_kind_of Array
      end
    end

    describe "draw" do
      it "removes a card from the deck" do
        deck = Deck.new

        deck.draw
        cards = deck.deck

        cards.length.must_equal 51
      end

      it "returns the card that was drawn from the deck" do
        deck = Deck.new

        card = deck.draw
        cards = deck.deck

        card.must_be_instance_of Card
        cards.include?(card).must_equal false
      end
    end

    describe "count" do
      it "" do
        deck = Deck.new
        
        deck.count.must_equal 52
      end
    end

end
