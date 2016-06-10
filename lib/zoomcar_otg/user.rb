require_relative "requests.rb"
module ZoomcarOtg

	class User

		include ZoomcarOtg::Requests

		def initialize(token = nil)
			@token = token
		end

		def auth_token(options = {})
			url = ZoomcarOtg::HOST + "v4/users/auth_token"
			get(url, options)
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