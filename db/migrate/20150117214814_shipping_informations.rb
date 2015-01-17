class ShippingInformations < ActiveRecord::Migration
  def change
    create_table :shipping_informations do |t|
      t.string :country
      t.string :state
      t.string :street
      t.string :zipcode
      t.integer :user_id

      t.timestamps
    end
  end
end
