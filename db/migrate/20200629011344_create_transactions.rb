class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true
      t.references :transaction_type, index: true, foreign_key: true
      t.references :transaction_status, index: true, foreign_key: true
      t.references :transaction_payment, index: true, foreign_key: true
      t.references :cashier_session, index: true, foreign_key: true
      t.string :transaction_code, null: false
      t.timestamp :commit_at

      t.timestamps
    end
  end
end
