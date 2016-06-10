require_relative "requests.rb"
module ZoomcarOtg

	class Booking

		include ZoomcarOtg::Requests

		def initialize(token = nil)
			@token = token
		end

		def checkout

		end

		def create

		end

		def promo

		end

		def initiate_cancel

		end

		def confirm_cancellation

		end
	end

end