class WinemailController < ApplicationController
   def new
   end

   def create
      WinMailer.user_won("liam.kirsh@gmail.com").deliver
   end
end
