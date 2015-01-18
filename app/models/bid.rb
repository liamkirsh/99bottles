class Bid < ActiveRecord::Base
  belongs_to :user
  belongs_to :auction

 #create bid only if auction is live 
  def isValid
    return self.auction.live
  end
end
