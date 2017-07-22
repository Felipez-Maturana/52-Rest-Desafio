class Bday < ApplicationRecord
	def self.search(search)
		if search
			Bday.where("name LIKE ?", "%#{search}%")
		else
			Bday.all
		end
	end
end
