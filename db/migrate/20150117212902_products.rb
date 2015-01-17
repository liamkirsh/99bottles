class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image_link

      t.timestamps
    end
  end
end
