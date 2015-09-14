class AuthsController < ApplicationController

	def new
		if current_user
			redirect_to users_path
		else
			@user = User.new
		end
	end

	def create
		#pull the user from mongo
		@user = User.find_by(name: params[:user][:name])
		#check to see if the password matches
		if @user.authenticated?(params[:user][:password])
			#authenticated!!!
			#lets store the state that the user is logged in
			session[:user_id] = @user.id
			redirect_to users_path
		else
			render action: "new"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to users_path
	end

end