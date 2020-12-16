class Board
    attr_accessor :cells


    def initialize
        @cells = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end

    def reset!
        @cells = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts '-----------'
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts '-----------'
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
        puts "\n"
    end

    def position(input)
        @cells[input.to_i - 1]
    end

    def full?
        @cells.all? {|cell| cell != ' '}
    end

    def turn_count
        #@cells.map {|cell| cell == ' '}.size / 3
        @cells.count{|char| char == 'X' || char == 'O'}
    end

    def taken?(position)
        @cells[position.to_i - 1] == "X" || @cells[position.to_i - 1] == "O"
    end

    def valid_move?(position)
        !(taken?(position)) && (0..9).include?(position.to_i - 1)
    end

    def update(position, player)
        @cells[position.to_i - 1] = player.token
        display
    end



end