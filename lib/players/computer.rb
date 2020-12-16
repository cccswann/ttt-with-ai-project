module Players
    class Computer < Player
        def move(board)
          #binding.pry
          random = rand(9)
          if board.valid_move?(random)
            board.update(random)
          end 
        end

    end
end