class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_customer

  def current_customer
  	@current_customer ||= Customer.where(:id => session[:user_id]).first 
  end

end

# User.where([:id]) => session[:user_id]