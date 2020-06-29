class CreateCartDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_details do |t|
      t.references :receive_order_detail, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps
    end
  end
end
