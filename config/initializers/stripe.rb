if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['pk_test_df1dMVfRxqD9uA5uUHA96VIh00ZdfDidrF'],
    secret_key: ENV['sk_test_bQpwhrT2mIFLHKgzo7ukstxw00U9vVaCQm']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_zkT...',
    secret_key: 'sk_test_I0e...'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
