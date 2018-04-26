class Hand
  attr_reader :player_hand

  HAND_HIEARCHY = [:high_card, :pair, :two_pair, :three_of_a_kind, :straight, :flush,
    :full_house, :four_of_a_kind, :straight_flush]

  def initialize
    @player_hand = []
  end

  def receive_card(card)
    @player_hand << card
  end

  def eval_hand
    return :straight_flush if straight_flush?
  end

  def straight_flush?

  end




end
