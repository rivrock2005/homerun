class Product < ApplicationRecord
has_many :orders

validates :image_url, allow_blank: true, format: {
  with: %r{\.gif|jpg|png}i,
  message: 'must be a url for gif, jpg, or png image.'
}

end

def self.search(search_term)
  Product.where("name LIKE ?", "%#{search_term}%")
end