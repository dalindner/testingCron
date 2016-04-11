class TestMailer < ActionMailer::Base
  default from: "mywebsite.com"

    def welcome_email(user)
    @user = user
    @url  = 'http://mywebsite.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
