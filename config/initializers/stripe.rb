Rails.configuration.stripe = {
  :publishable_key => ENV['pk_live_sGENkZPNEiNKfO64wcut0zJq'],
  :secret_key      => ENV['sk_live_oiK03QDHKHc1ZbaO09ExY4rW']
}

Stripe.api_key = ENV['sk_live_oiK03QDHKHc1ZbaO09ExY4rW']
STRIPE_PUBLIC_KEY = ENV["pk_live_sGENkZPNEiNKfO64wcut0zJq"]