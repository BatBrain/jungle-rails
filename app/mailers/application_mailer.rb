class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def sample_email(current_user)
    @user = current_user
    mail(to: @user.email, subject: 'Thank you for your order! Order# ')
  end
end
