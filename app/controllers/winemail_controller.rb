class WinemailController < ApplicationController
   def new
   end

   def create
      WinMailer.user_won("99bottles.20.choicefresh@spamgourmet.com").deliver
   end
end
