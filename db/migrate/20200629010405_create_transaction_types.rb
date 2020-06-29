class CreateTransactionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_types do |t|
      t.string :transaction_name, null: false
      t.boolean :is_active, null: false

      t.timestamps
    end
  end
end
