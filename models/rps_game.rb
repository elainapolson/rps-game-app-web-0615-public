require_relative 'play_type_error'
require 'pry'
 class RPSGame

  attr_reader :play, :computer_play

  MOVES = [:rock, :paper, :scissors]

  def initialize(play)
    if MOVES.include?(play)
      @play = play
    else
      raise PlayTypeError
    end

    set_computer_move
  end

  def self.valid_play?(play)
    if MOVES.include?(play)
      true
    else
      false
    end
  end

  def set_computer_move
    @computer_play = MOVES.sample
  end

  def computer_play
    @computer_play
  end

  def won?
    if self.computer_play == :scissors && self.play == :rock
      true
    elsif self.computer_play == :rock && self.play == :paper
      true 
    elsif self.computer_play == :paper && self.play == :scissors
      true  
    else
      false
    end
  end

  def tied?
    if self.computer_play == self.play 
      true
    else
      false
    end
  end

  def lost?
    if won? 
      false
    elsif tied?
      false
    else
      true
    end
  end

  def result
    if won?
      "Human won!"
    elsif tied?
      "Tie!"
    else
      "Human lost!"
    end
  end

end