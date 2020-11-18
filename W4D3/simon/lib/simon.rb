class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new

  end

  def play
    self.take_turn until self.game_over 
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    self.round_success_message unless self.game_over
    @sequence_length += 1

  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "YOU WIN"
  end

  def game_over_message
    p "YOU LOST"

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq.clear 
  end
end
