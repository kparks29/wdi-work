class AuthenticationsController < ApplicationController


	def index
		@authentications = Authentication.all
	end

	def create
		auth = request.env['omniauth.auth']
		render :text => auth.inspect
	end

	def destroy
		@authentication = Authentication.find(params[:id])
		@authentication.destroy
		flash[:notice] = "Successfully destroyed Authentication"
		redirect_to authentications_url
	end

end