# Bitcoin Price API - Ruby Gem

Bitcoin Price fetches the current Bitcoin price, recent movement direction, and update timestamps in USD. Paid plans can quote across 172 currencies and add 24-hour volume, market cap, and hourly history.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_bitcoin'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_bitcoin
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_bitcoin'

# Initialize the client
client = APIVerve::Bitcoin::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  currency: "USD",
  hourly: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency: "USD", hourly: true })
  puts response["data"]
rescue APIVerve::Bitcoin::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Bitcoin::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Bitcoin::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "USD",
    "price": 97250.43,
    "marketCap": 1928000000000,
    "volume24h": 35420000000,
    "change24h": -1.52,
    "lastUpdated": "2026-02-07T12:00:00.000Z",
    "high24h": 98750.21,
    "low24h": 96125.88,
    "changeDirection": "down",
    "formatted": {
      "price": "$97,250.43",
      "marketCap": "$1.93T",
      "volume": "$35.42B",
      "priceWords": "ninety-seven thousand two hundred fifty dollars"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/bitcoin?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/bitcoin?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/bitcoin?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
