Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_vZvHiuFoN6d4FEw1ZdQlTohW'],
  :secret_key      => ENV['sk_test_XTxlbB0BPMwOYNLbOOiVkHOv']
}

Stripe.api_key = ENV['sk_test_XTxlbB0BPMwOYNLbOOiVkHOv']
STRIPE_PUBLIC_KEY = ENV["pk_test_vZvHiuFoN6d4FEw1ZdQlTohW"]