class Game < ActiveRecord::Base

	has_many :steps
	
	CARD_DESCKS = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']*6
	
	@@cards = []

	def get_cards
		cards = shuffle_cards
		cards[0..2]
	end

	def self.start
		game = Game.create(p_score: 0, d_score: 0, price: 10)
		card = game.get_cards
		game.steps.create(p_card: card[0..1].join(','), d_card: card[2],step_type: 'hit')
		game
	end

	def hit_or_stand(step_type)
		step = {step_type: step_type, p_card: '', d_card: '',game_id: self.id}
		step_card = shuffle_cards.last.to_s
		if step_type == 'hit'
			step[:p_card] = step_card
		else
			step[:d_card] = step_card
		end
		Step.create(step)
		step_card
	end
		
	private
	def shuffle_cards
		CARD_DESCKS.shuffle.shuffle
	end		
end
