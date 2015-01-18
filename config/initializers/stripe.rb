 Rails.configuration.stripe = {
  :publishable_key => "pk_test_F2XxMHLMOMM2Zx5ncfxc39bQ",
  :secret_key      => "sk_test_V1IdfORoM8nU9azXp3hc9sn6"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]