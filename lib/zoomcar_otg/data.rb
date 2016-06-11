require_relative "requests.rb"
module ZoomcarOtg

	class Data

		include ZoomcarOtg::Requests

		def initialize(token = nil)
			@token = token
		end

		def live_bookings_details(options={})
			url = ZoomcarOtg::HOST + "public/v1/t4u_data/get_live_cars_specific_location"
			get(url, options)
		end
	end

end