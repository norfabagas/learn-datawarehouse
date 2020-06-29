class CreateTransactionPaymentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_payment_details do |t|
      t.references :transaction_payment, index: true, foreign_key: true
      t.time :invoice_date
      t.string :invoice_number

      t.timestamps
    end
  end
end
