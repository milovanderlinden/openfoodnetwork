# Google requires an API key with a billing account to use their API.
# The key is stored in config/application.yml.

Geocoder.configure(
  timeout: ENV.fetch('GEOCODER_TIMEOUT', 3).to_i,
  lookup: ENV.fetch('GEOCODER_SERVICE', :nominatim).to_sym,
  use_https: true
)
