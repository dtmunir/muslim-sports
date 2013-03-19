require 'linkedin'
class HomeController < ApplicationController
  def index
  	@test = "http://#{request.host_with_port}/"
    client = LinkedIn::Client.new('zyhuitz6ja4c','J06bDoyLwvD1FaEV')
	@t2 = client.request_token(oath_callback: "http://#{request.host_with_port}/auth/callback").secret  
	#client.request_token.authorize_url + "&oath_callback="+URI::escape("http://#{request.host_with_port}/auth/callback")
  end

  def about
  end

  def contact
  end
end
