
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      card_1 = Card.new(8, :hearts)
      card_2 = Card.new(2, :spades)
      card_3 = Card.new(10, :diamonds)

      card_string_1 = card_1.to_s
      card_string_2 = card_2.to_s
      card_string_3 = card_3.to_s


      card_string_1.must_equal "8 of hearts"
      card_string_2.must_equal "2 of spades"
      card_string_3.must_equal "10 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      card_1 = Card.new(1, :hearts)
      card_2 = Card.new(11, :spades)
      card_3 = Card.new(12, :diamonds)
      card_4 = Card.new(13, :clubs)

      card_string_1 = card_1.to_s
      card_string_2 = card_2.to_s
      card_string_3 = card_3.to_s
      card_string_4 = card_4.to_s

      card_string_1.must_equal "Ace of hearts"
      card_string_2.must_equal "Jack of spades"
      card_string_3.must_equal "Queen of diamonds"
      card_string_4.must_equal "King of clubs"

    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`

      card = Card.new(2, :spades)

      value = card.value

      value.must_equal 2
      card.must_respond_to :value
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card = Card.new(2, :spades)

      suit = card.suit

      suit.must_equal :spades
      card.must_respond_to :suit
    end
  end

end
