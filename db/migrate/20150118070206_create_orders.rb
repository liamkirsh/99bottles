class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :winning_price
      t.integer :auction_id
      t.integer :user_id
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
