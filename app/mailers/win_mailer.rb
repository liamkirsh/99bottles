class WinMailer < ActionMailer::Base
   def user_won(to_email)
      mail :subject => "Message Subject",
           :to      => to_email,
           :from    => "noreply@99bottles.us"
   end
end
