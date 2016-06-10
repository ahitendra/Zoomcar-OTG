require "zoomcar_otg/version"
require "rest-client"
# require "URI"
require "JSON"

require_relative "zoomcar_otg/user.rb"
require_relative "zoomcar_otg/booking.rb"
require_relative "zoomcar_otg/search.rb"
require_relative "zoomcar_otg/requests.rb"

module ZoomcarOtg

	extend ZoomcarOtg::Requests
  
  HOST = "http://localhost:3000/"

  def self.is_token_vailid?(token)
  	url = ZoomcarOtg::HOST + "v4/users/authorization_check"
  	response = JSON.parse(get(url, {}, token))
  	if response["status"] == 1
  		true
  	else
  		false
  	end
  end

end
