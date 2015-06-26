require_relative 'play_time_error'

class RPSGame

  attr_reader :play, :computer_play

  MOVES = [:rock, :paper, :scissors]

  def initialize(play)
    @play = play
    if !MOVES.include?(@play)
      raise PlayTypeError
    end
  end

  def self.valid_play?(play)
    if MOVES.include?(play)
      true
    else
      false
    end
  end

  def computer_play
    @computer_play = MOVES.sample
  end

  def won?
    if (@computer_play == :scissors && @play == :rock) || (@computer_play == :rock && @play == :paper) || (@computer_play == :paper && @play == :scissors)
      true  
    else
      false
    end
  end

  def tied?
    if @computer_play == @play 
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
