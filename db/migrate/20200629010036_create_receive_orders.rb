class CreateReceiveOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :receive_orders do |t|
      t.belongs_to :store, index: { unique: true }, foreign_key: true
      t.time :receive_date, null: false

      t.timestamps
    end
  end
end
