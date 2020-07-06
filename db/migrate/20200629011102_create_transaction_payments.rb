class CreateTransactionPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_payments do |t|
      t.integer :payment_sum, null: false

      t.timestamps
    end
  end
end
