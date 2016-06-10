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

		def upload_license(options = {})
			url = ZoomcarOtg::HOST + "v4/users/license_upload"
			post(url, options)
		end

		def licenses(options = {})
			url = ZoomcarOtg::HOST + "v4/users/licenses"
			post(url, options)
		end

	end

end