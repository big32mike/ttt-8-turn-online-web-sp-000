def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
    case board[index]
    when '', ' ', nil
        return false
    else
        return true
    end
end

def move(board, index, char='X')
    board[index] = char
end

def turn(board)
    puts "Please enter 1-9:"
    raw = gets.chomp
    idx = input_to_index(raw)
    if valid_move?(board, idx)
      move(board, idx)
      display_board(board)
    else
        turn(board)
    end
end