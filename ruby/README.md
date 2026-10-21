# Advice Generator API - Ruby Gem

Advice Generator supplies random pieces of advice on demand. Each response includes a unique advice identifier, the advice quote, and the language code.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_advice'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_advice
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_advice'

# Initialize the client
client = APIVerve::Advice::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({  })
  puts response["data"]
rescue APIVerve::Advice::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Advice::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Advice::Client.new(
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
    "id": "3xx4VZSZ",
    "advice": "Be creative and innovative.",
    "lang": "en"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/advice?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/advice?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/advice?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
