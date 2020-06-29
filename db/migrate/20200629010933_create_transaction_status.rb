class CreateTransactionStatus < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_statuses do |t|
      t.string :status_name, null: false

      t.timestamps
    end
  end
end
