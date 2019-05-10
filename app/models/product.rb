class Product < ApplicationRecord
	has_many :orders

	validates :image_url, allow_blank: true, format: {
		with: %r{\.gif|jpg|png}i,
		message: 'must be a url for gif, jpg, or png image.'
	}

	def self.search(search_term)
		if Rails.env.development?
			Product.where("name LIKE ?", "%#{search_term}%")
		else Rails.env.production?
			Product.where("name ilike ?", "%#{search_term}%")
		end
	end

end