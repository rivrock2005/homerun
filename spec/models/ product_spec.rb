require 'rails_helper'

describe Product do
  let(:product) { Product.create!(name: "nrs") }
   let(:user) { User.create!(email: "rrarafting@gmail.com", password: "123456"  ) }
  

  before do
    product.comments.create!(rating: 1, user: user, body: "Awful bike!")
    product.comments.create!(rating: 3, user: user, body: "Ok bike!")
    product.comments.create!(rating: 5, user: user, body: "Great bike!")
  end

  it "returns the average rating of all comments" do

  end


end
