class CreateReceiveOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :receive_orders do |t|
      t.references :store, index: true, foreign_key: true
      t.time :receive_date, null: false

      t.timestamps
    end
  end
end
