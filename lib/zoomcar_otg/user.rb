require_relative "requests.rb"
module ZoomcarOtg

	class User

		include ZoomcarOtg::Requests

		def initialize(token = nil)
			@token = token
		end

		def signup

		end

		def signin

		end

		def upload_license

		end

		def licenses

		end

	end

end