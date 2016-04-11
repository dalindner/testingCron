class PagesController < ApplicationController
  def about
  end

  def contact
  	@b = User.where(:id => 5).first()
  	TestMailer.welcome_email(@b).deliver
  end

  def index
  	if(user_signed_in?)
  		TestMailer.welcome_email(current_user).deliver
  	end
  end
end
