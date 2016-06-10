require_relative "requests.rb"
module ZoomcarOtg

	class Search

		include ZoomcarOtg::Requests

		def initialize(token = nil)
			@token = token
		end

		def zoom_later(options = {})
			url = ZoomcarOtg::HOST + "v4/searches/zoom_later"
			get(url, options)
		end

		def airport(options = {})
			url = ZoomcarOtg::HOST + "v4/searches/airport"
			get(url, options)
		end

	end

end