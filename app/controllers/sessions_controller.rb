
class SessionsController < ApplicationController
	def new
		# Present an empty login form
		@customer = Customer.new
		@is_login = true
	end

	def create
		# Find the user that is trying to log in		
		u = Customer.where(email: params[:customer][:email]).first
		if u && u.authenticate(params[:customer][:password])
			# Store as a cookie in the users' browser the ID of them,
			# indicating that they are logged in
			session[:customer_id] = u.id.to_s
			redirect_to home_customers_path
		else
			# Go back to the login page
			redirect_to new_sessions_path
		end
	end

	def destroy
		reset_session
		redirect_to new_sessions_path
	end
end

