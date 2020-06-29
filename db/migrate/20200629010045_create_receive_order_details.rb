class CreateReceiveOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :receive_order_details do |t|
      t.belongs_to :receive_order, index: { unique: true }, foreign_key: true
      t.references :item, index: { unique: true }, foreign_key: true
      t.numeric :cogs, null: false
      t.numeric :price, null: false
      t.numeric :quantity, null: false

      t.timestamps
    end
  end
end
