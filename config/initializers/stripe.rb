if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_df1dMVfRxqD9uA5uUHA96VIh00ZdfDidrF',
    secret_key: 'sk_test_bQpwhrT2mIFLHKgzo7ukstxw00U9vVaCQm'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
