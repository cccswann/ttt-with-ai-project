module Players
    class Human < Player
    
        def move(board)
            puts "Please enter you selection"
            input = gets.strip
        end

    end
end