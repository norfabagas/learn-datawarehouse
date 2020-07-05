class CreateReceiveOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :receive_orders do |t|
      t.belongs_to :store, index: true, foreign_key: true
      t.timestamp :receive_date, null: false

      t.timestamps
    end
  end
end
