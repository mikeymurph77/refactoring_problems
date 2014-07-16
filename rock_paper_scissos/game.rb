require "./computer_move_generator"

class Rock_Paper_Scissors
	PLAYER_MOVE = ["r", "p", "s"]

	def initialize
	end

	def play
		game_prompt
		loop do
			players_move
			puts "---------------------"
			comparison
			possible_combinations
			results
			puts "---------------------"
		end
	end

	def game_prompt
		puts "Want to play a game? (enter y/n)"

		if gets.chomp == "y"
			Rock_Paper_Scissors.new
		else 
			puts "OK...come again"t
			exit
		end
	end

	def players_move
		puts "Your move? (r/p/s, or any other key to quit)"
		@move = gets.chomp			
	end

	def comparison
		if PLAYER_MOVE.include?(@move)
			puts "Your move: #{@move}"
			@computer_move_generator = ComputerMoveGenerator.new
			puts "Computers move: #{@computer_move_generator.computers_move}"
		else
			puts "See you next time."
			exit
		end
	end

	def possible_combinations
		possible_combinations = {
			"r" => { "p" => "Loser", "s" => "Winner" },
			"p" => { "r" => "Winner", "s" => "Loser" },
			"s" => { "r" => "Loser", "p" => "Winner" }
		}

		@computers_move = @computer_move_generator.computers_move

		@result = possible_combinations[@computers_move][@move]
	end

	def results
		puts "You are the #{@result}"
	end
end

rock_paper_scissors = Rock_Paper_Scissors.new
rock_paper_scissors.play