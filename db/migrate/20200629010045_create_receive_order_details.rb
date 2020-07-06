class CreateReceiveOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :receive_order_details do |t|
      t.belongs_to :receive_order, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true
      t.integer :cogs, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
