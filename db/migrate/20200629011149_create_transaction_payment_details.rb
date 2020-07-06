class CreateTransactionPaymentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_payment_details do |t|
      t.belongs_to :transaction_payment, index: true, foreign_key: true
      t.timestamp :paid_at
      t.string :invoice_number
      t.integer :amount_paid
      t.integer :payment_type_id
      t.string :payment_type

      t.timestamps
    end
  end
end
