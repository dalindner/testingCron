class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :age, :gender, :role, :emailSecondary, :phoneNumber, :phoneNumberSecondary, :company, :project, :inputID, :spedialty, :inputId)}
  		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :gender, :age, :role, :emailSecondary, :phoneNumber, :phoneNumberSecondary, :company, :project, :inputID, :specialty)}
  	end
end
