class PaymentsController < ApplicationController

  def create
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => @product.price * 100, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
        )

    rescue Stripe::CardError => e
      # The card has been denied
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end

    redirect_to simple_pages_payment_thank_you_path
  end
end
