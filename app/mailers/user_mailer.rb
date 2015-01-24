class UserMailer < ApplicationMailer
  default from: "heyimuzz@gmail.com"
  def auction_won(user)
    mail(to: user.email, subject: "Coungratulations! You won!")
  end
end
