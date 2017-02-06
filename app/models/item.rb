class Item < ApplicationRecord
    belongs_to :user

	def purchase
		self.times_purchased += 1
	end

end
