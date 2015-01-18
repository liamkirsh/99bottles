class WinMailer < ActionMailer::Base
   def user_won(to_email)
      mail :subject => "You won an auction on 99 bottles!",
           :to      => to_email,
           :from    => "noreply@99bottles.us"
   end
end
