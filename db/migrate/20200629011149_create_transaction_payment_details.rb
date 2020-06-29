class CreateTransactionPaymentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_payment_details do |t|
      t.belongs_to :transaction_payment, index: { unique: true }, foreign_key: true
      t.time :invoice_date
      t.string :invoice_number

      t.timestamps
    end
  end
end
