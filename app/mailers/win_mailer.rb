class WinMailer < ActionMailer::Base
   default from: "noreply@99bottles.us"

   def user_won(to_email)
      mail :subject => "You won an auction on 99bottles!",
           :to      => to_email
           :from    => "noreply@99bottles.us"
           :message => "You won! Come claim your auction at 99bottles."
   end
end
