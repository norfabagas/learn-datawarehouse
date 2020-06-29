class CreateDebitCards < ActiveRecord::Migration[6.0]
  def change
    create_table :debit_cards do |t|
      t.references :debit_card_list, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.string :holder_name, null: false
      t.string :card_number, null: false
      t.boolean :is_active
      t.boolean :is_default

      t.timestamps
    end
  end
end
