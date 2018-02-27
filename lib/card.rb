
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if value < 1 || value > 13 || ![:hearts, :spades, :clubs, :diamonds].include?(suit)
      raise ArgumentError.new("No such card exists")
    end
    @value = value
    @suit = suit
  end

  def to_s
    return "Ace of #{suit.to_s}" if value == 1
    return "Jack of #{suit.to_s}" if value == 11
    return "Queen of #{suit.to_s}" if value == 12
    return "King of #{suit.to_s}" if value == 13
    return "#{value} of #{suit.to_s}"

  end

end
