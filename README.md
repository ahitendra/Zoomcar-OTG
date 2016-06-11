# ZoomcarOTG

Welcome to your new gem! This gem helps you to book Zoomcar from your plat form if you are an authorized partner of Zoomcar

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zoomcar_otg', :git => "https://github.com/ahitendra/Zoomcar-OTG"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zoomcar_otg

## Usage

To check validity of your partner token:

```ruby
ZoomcarOtg::is_token_vailid?(<authorization_token>)
```

Create an user object to get any particular user related data:
```ruby
user = ZoomcarOtg::User.new(<authorization_token>)
```

To get authenticity token of any particular user:
```ruby
auth_token = user.auth_token({:email => <email id>, :name => <name>, :phone => <phone number>})
```
To get user's license status:
```ruby
user.license_status({:auth_token => <auth_token>})
```

To upload user's license:
```ruby
user.upload_license({:auth_token => <auth_token>, :image_data => <Base64 encoded data>, :image_format => <image format>})
```
To get user's licenses:
```ruby
user.licenses({:auth_token => <auth_token>})
```

Create a search object to get available cars in a city:
```ruby
search = ZoomcarOtg::Search.new(<authorization_token>)
```

To get available cars in a particular city for a given duration:
```ruby
results = search.zoom_later({:city => <city name>, :starts => <start time>, :ends => <end time>})
```

To get available cars at any particular city's airport location:
```ruby
results = search.airport({:city => <city name>, :starts => <start time>, :ends => <end time>})
```
Create a booking object to book any car:
```ruby
booking = ZoomcarOtg::Booking.new(<authorization_token>)
```

To get booking id and to get the amount to be paid:
```ruby
booking.create({:auth_token => <user token>, :city => <city name>, :starts => <start time>, :ends => <end time>, :location_id => <location_id>, :cargroup_id => <car id>, :pricing_id => <pricing id>})
```

After taking the booking's payment by you, to confirm the payment:
```ruby
booking.confirm_payment({:auth_token => <user auth token>, :booking_id => <booking id you got above>, :amount => <the amount you have taken for the corresponsing booking>})
```
To initiate the cancellation and to know the refundable amount of any particular booking:
```ruby
booking.request_cancellation({:auth_token => <user auth token>, :booking_id => <booking id>})
```
To confirm the cancellation:
```ruby
booking.confirm_cancellation({:auth_token => <user auth token>, :booking_id => <booking id>})
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ahitendra/zoomcar_otg. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

