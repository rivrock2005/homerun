class SimplePagesController < ApplicationController
def landing_page
  @featured_product = Product.first
  
  def about
  end

  def contact
  end

  def Products
  end


  end
end
