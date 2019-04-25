class SimplePagesController < ApplicationController
  def landing_page
    @featured_product = Product.first
    @products = Product.limit(3)
  end
  def about
  end

  def contact
  end

  def Products
  end

  



end
