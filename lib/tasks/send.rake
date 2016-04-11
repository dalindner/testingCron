namespace :send do
  desc 'Send Email'
	task email: :environment do
  	TestMailer.welcome_email(User.where(:id => 5).first()).deliver
	end
end