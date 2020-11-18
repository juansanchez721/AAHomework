require "byebug"


class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new(4, :stone)} #0-13
    place_stones
    @name1 = name1
    @name2 = name2

  end

  def place_stones
    @cups[6] = []   # cups 7 and 14
    @cups[13] = []
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos >= @cups.length
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

    collected = @cups[start_pos]
    @cups[start_pos] = []

    i = 0
    while i < collected.length
      # debugger
          start_pos += 1
          start_pos = 0 if start_pos == 14 || (start_pos == 13 && current_player_name == @name1)
          if start_pos == 6 && current_player_name == @name2
            start_pos += 1
          end

      @cups[start_pos] << :stone 
      i += 1
    end
    # debugger
    self.render
    self.next_turn(start_pos)
    # debugger
    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13 

    return :switch if @cups[ending_cup_idx].length == 1

    return ending_cup_idx if @cups[ending_cup_idx].length > 1

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    first_half = Hash.new(0)
    (0..5).each {|i| first_half[:stone] += @cups[i].length }

    second_half = Hash.new(0)
    (7..12).each {|i| second_half[:stone] += @cups[i].length }

    first_half.values.sum == 0 || second_half.values.sum == 0
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    return @name1 if  @cups[6].length > @cups[13].length
    return @name2
  end
  
end
