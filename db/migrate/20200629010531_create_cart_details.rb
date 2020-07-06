class CreateCartDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_details do |t|
      t.belongs_to :cart, index: true, foreign_key: true
      t.belongs_to :receive_order_detail, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
