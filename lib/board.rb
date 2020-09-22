class Board
 attr_accessor :cells
 
 def reset!
   @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
 end
 
 def initialize
   reset!
 end
 
 def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end
  
  def position(input)
    input = input.to_i
    cells[input - 1]
  end
  
  def full?
    if @cells.all?{|cell| cell != " " }
      true
    elsif @cells.any?{|cell| cell == " "}
      false
    end
  end
  
  def turn_count
    turn_count = 0
    cells.each do |position| 
      if position == "X" || position == "O"
        turn_count += 1
        end
      end
    turn_count
  end
  
  def taken?(input)
    position(input) == "X" || position(input) == "O"
  end
  
  def valid_move?(input)
    input = input.to_i
    input.between?(1,9) && !(taken?(input))
  end
  
  def update(input, player)
    input = input.to_i 
    @cells[input - 1] = player.token
  end
    
end