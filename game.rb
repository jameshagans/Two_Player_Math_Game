class Player
  attr_accessor :name, :lives, :score
  
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
  
  def lose_life
    @lives -= 1
  end
  
  def correct_answer
    @score += 1
  end
end

class MathGame
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end
  
  def start_game
    puts "Start!"
    
    loop do
      generate_question
      print_scores
      
      if @current_player.lives == 0
        end_game
        break
      end
      
      switch_players
    end
  end

  def generate_question

    @num_1 = rand(1..20)
    @num_2 = rand(1..20)
    @answer = @num_1 + @num_2

    puts "#{@current_player.name} What is the answer to #{@num_1} + #{@num_2}"
    @response = gets.chomp.to_i

    if @response == @answer
      @current_player.score += 1
      puts "Correct answer!"
      
    else
      @current_player.lives -= 1
      puts "Incorrect! You lose a life"
    end

    end

    def switch_players
      if @current_player == @player1
        @current_player = @player2

      else
        @current_player = @player1
      end
    end


    def print_scores
      puts "Scores:"
      puts "#{@player1.name}: Lives: #{@player1.lives}, Score: #{@player1.score}"
      puts "#{@player2.name}: Lives: #{@player2.lives}, Score: #{@player2.score}"
    end

    def end_game
    puts "Game over!"

    if @player1.lives == 0
      winner = @player2
    else 
      winner == @player1
    end
    puts "The winner is #{winner.name}, congrats!"
    end 
  end
    game = MathGame.new
    game.start_game
    
