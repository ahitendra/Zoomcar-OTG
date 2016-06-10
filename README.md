# ZoomcarOTG

Welcome to your new gem! This gem helps you to book Zoomcar from your plat form if you are an authorized partner of Zoomcar

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zoomcar_otg'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zoomcar_otg

## Usage

To check your validity of you partner token:

```ruby
ZoomcarOtg::is_token_vailid?(<token>)
```

Create a search object to search for the available cars:
```ruby
search = ZoomcarOtg::Search.new(<token>)
```

To Search for any duration for particular city:
```ruby
results = search.zoom_later({:city => <city name>, :starts => <start time>, :ends => <end time>})
```

To get available cars at any particular city's airport location:
```ruby
results = search.airport({:city => <city name>, :starts => <start time>, :ends => <end time>})
```
Create a booking object to book any car:
```ruby
search = ZoomcarOtg::Booking.new(<token>)
```

To book any car:
```ruby
booking.create({:auth_token => <user token>, :city => <city name>, :starts => <start time>, :ends => <end time>, :location_id => <location_id>, :cargroup_id => <car id>, :pricing_id => "pricing id"})
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/zoomcar_otg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

