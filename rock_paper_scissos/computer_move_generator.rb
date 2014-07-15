class ComputerMoveGenerator
	COMPUTER_MOVE_OPTIONS = ["r", "p", "s"]

	def initialize
		# @computers_move = computers_move
		@shuffled_moves = COMPUTER_MOVE_OPTIONS.shuffle
		@computers_move = @shuffled_moves[0].to_s
	end

	def computers_selection
		puts @computers_move
	end

	attr_reader :computers_move
end