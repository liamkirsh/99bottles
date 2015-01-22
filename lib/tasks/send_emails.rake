namespace :send_emails do

  task create_orders: :environment do
    Auction.create_orders
  end

end
