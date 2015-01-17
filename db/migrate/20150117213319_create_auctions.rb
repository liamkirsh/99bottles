class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.datetime :end_time
      t.integer :minimum_price
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
