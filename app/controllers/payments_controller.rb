class PaymentsController < ApplicationController
end

def create
  @product params[:product_id]
  @user params [user_signed_in?]
  token = params[:stripeToken]
  # Create the charge on Stripe's servers - this will charge the user's card
  begin
    charge = Stripe::Charge.create(
      amount="<%= @product %>"
      currency: "usd",
      source: token,
      description: params[:stripeEmail]
    )
      if charge.paid
        Order.create()
  end

rescue Stripe::CardError => e




rescue Stripe::CardError => e
  # The card has been declined
  redirect_to product_path(@product)
end
end
