require_relative "requests.rb"
module ZoomcarOtg

	class Booking

		include ZoomcarOtg::Requests

		def initialize(token = nil)
			@token = token
		end

		def checkout

		end

		def create(options = {})
			url = ZoomcarOtg::HOST + "v4/bookings"
			post(url, options)
		end

		def confirm_payment(options = {})
			url = ZoomcarOtg::HOST + "v4/bookings/confirm_payment"
			post(url, options)
		end

		def promo

		end

		def request_cancellation(options = {})
			url = ZoomcarOtg::HOST + "v4/bookings/cancel_initiation"
			post(url, options)
		end

		def confirm_cancellation(options = {})
			url = ZoomcarOtg::HOST + "v4/bookings/cancel_confirmation"
			post(url, options)
		end
	end

end