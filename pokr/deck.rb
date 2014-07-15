class Deck
	def initialize(filename)
		@filename = filename
	end

	def cards

		cards = []

		File.new(@filename).each_line do |card|
			cards << card.split
		end

		cards
		# hand = cards.shuffle.sample(5)

	end
end

