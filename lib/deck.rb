
# deck.rb

require_relative 'card'

class Deck
  attr_reader :deck
  def initialize
    @deck = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @deck << card
      end
    end
  end

  def draw
    # returns a card
    return false if @deck.empty?
    @deck.shift
  end

  def shuffle
    return @deck.shuffle!
    # shuffles the deck
  end

   def count
     @deck.length
   end
end
