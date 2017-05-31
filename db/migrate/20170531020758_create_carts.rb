class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :total_price
      t.boolean :open
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
