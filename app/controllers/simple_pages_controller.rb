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

  def payment_thank_you
    
  end
    #   def thank_you
#   @name = params[:name]
#   @email = params[:email]
#   @message = params[:message]
#   ActionMailer::Base.mail(from: @email,
#       to: 'ashton.chris33@gmail.com',
#       subject: "A new contact form message from #{@name}",
#       body: @message).deliver_now
#
#
#
# end

  end
