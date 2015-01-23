class UserMailer < ApplicationMailer
  default from: "heyimuzz@gmail.com"
  def auction_won(user)
    mail(to: "faraaznishtar@gmail.com", subject: "Coungratulations! You won!")
  end
end
