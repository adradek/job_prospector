# encoding : utf-8

MoneyRails.configure do |config|

  config.default_currency = :usd

  # Add exchange rates to current money bank object.
  # (The conversion rate refers to one direction only)
  #
  # Example:
  # config.add_rate "USD", "CAD", 1.24515
  # config.add_rate "CAD", "USD", 0.803115
end
