class UserMailer < ActionMailer::Base
  default from: "ken@actionmailer.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @greeting = "Hi"
    @user = user
    mail to: user.email, subject: "Welcome to ActionMailer"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forgot_password.subject
  #
  def forgot_password(user)
    @user = user
    mail to: user.email, subject: "Tell your friends about us!"
  end
end
