class WinMailer < ActionMailer::Base
   def user_won(to_email)
      mail :subject => "Message Subject",
           :to      => "liam.kirsh@gmail.com",
           :from    => "noreply@99bottles.us"
   end
end
