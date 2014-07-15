# read all cards from cards.in file
# Have 4 players
# player should be dealt 5 cards
	# cards will be randomized

require "./deck"

class Round
	def initialize(cards)
		@hand = cards
	end

	def deal
		display_hand
	end

	def display_hand
		@individual_hand = @hand.shuffle.sample(5)

		5.times do |i|
			puts @individual_hand 
		end

		seperate_hands = @individual_hand
		#split up hands per player

	end

end


deck = Deck.new("cards.in")
round = Round.new(deck.cards)
round.deal
# deck.cards
