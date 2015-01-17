class Bids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :user_id
      t.intefer :auction_id
      t.integer :offer_price

      t.timestamps
    end
  end
end
