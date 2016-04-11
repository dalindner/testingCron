 # ActionMailer::Base.delivery_method = :smtp
 # ActionMailer::Base.smtp_settings = {
 #   :address              => "smtp.gmail.com",
 #   :port                 => 587,
 #   :domain               => 'gmail.com',
 #   :user_name            => 'peterjok4president@gmail.com',
 #   :password             => 'groupgroup',
 #   :authentication       => :plain,
 #   :enable_starttls_auto => true  }

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'app49381079@heroku.com',
  :password             =>  'ryvzthn52749',
  :domain               =>  'heroku.com',
  :enable_starttls_auto  =>  true
}