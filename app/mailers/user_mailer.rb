class UserMailer < ActionMailer::Base
  default from: "noreply@bouillabaisse.com",
          bcc: "bouillabaissebigbrother@gmail.com"

  # Sends an account confirmation email to the specified user
  def account_confirmation(user)
    @user = user
    mail :to => user.email, :subject => "Confirm Bouillabaisse Account"
  end
  
  # Sends a password reset email to the specified user
  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Fisch Bouillabaisse Password Reset"
  end
end
