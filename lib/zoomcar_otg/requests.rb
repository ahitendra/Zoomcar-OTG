module ZoomcarOtg
	module Requests

		def post(url, payload = {})
			begin
				url = URI.encode(url)
				response = RestClient::Request.execute(url: url, method: 'post', payload: payload, headers: {:Authorization => "Token token=#{@token}"})
				response.body
			rescue => e
				JSON.parse(e.response)
			end
		end

		def get(url, params = {}, token = nil)
			begin
				token = @token || token
				url = URI.encode(url)
				response = RestClient::Request.execute(url: url, method: 'get', payload: params, headers: {:Authorization => "Token token=#{token}"})
				response.body
			rescue => e
				JSON.parse(e.response)
			end
		end

		def valid?
			url = ZoomcarOtg::HOST + "v4/users/authorization_check"
			get(url)
		end

	end
end