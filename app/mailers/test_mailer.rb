class TestMailer < ActionMailer::Base
  default from: "test@example.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def testemail()
    mail(to: 'peterjok4president@gmail.com', subject: 'You visited the index not signed in')
  end

end
