# Company: MuslimSports

# Application Name: Imran

# API Key:
# zyhuitz6ja4c

# Secret Key:
# J06bDoyLwvD1FaEV

# OAuth User Token:
# 92be30a3-742f-4f85-aa14-1b008a567acb

# OAuth User Secret:
# 68b2d75d-32b7-4bbb-876a-3d54daf1ad49

require 'linkedin'
class AuthController < ApplicationController

	def index
		client = LinkedIn::Client.new('zyhuitz6ja4c','J06bDoyLwvD1FaEV')
		request_token = client.request_token(:oath_callback => "http://#{request.host_with_port}/auth/callback")
		session[:rtoken] = request_token.token
	    session[:rsecret] = request_token.secret
		redirect_to client.request_token.authorize_url
	end

	def callback
		client = LinkedIn::Client.new('zyhuitz6ja4c','J06bDoyLwvD1FaEV')
		if session[:atoken].nil?
			pin = params[:oauth_verifier]
			atoken, asecret = client.authorize_from_request(session[:rtoken],session[:rsecret],pin)
		else
			client.authorize_from_access(session[:atoken],session[:asecret])
		end
		@profile = client.profile
		@connections = client.connections
	end
end
