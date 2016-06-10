module ZoomcarOtg
	module Requests

		def post(url, payload)
			begin
				url = URI.encode(url)
				response = RestClient::Request.execute(url: url, method: 'post', payload: payload, headers: {:Authorization => 'Token token=#{@token}'})
				JSON.parse(response)
			rescue => e
				JSON.parse(e.response)
			end
		end

		def get(url, params)
			begin
				url = URI.encode(url)
				response = RestClient.get(url, params: params, headers: {:Authorization => 'Token token=#{@token}'})
				JSON.parse(response)
			rescue => e
				JSON.parse(e.response)
			end
		end

	end
end