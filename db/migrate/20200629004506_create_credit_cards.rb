class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.belongs_to :credit_card_list, index: true, foreign_key: true
      t.belongs_to :customer, index: true, foreign_key: true
      t.string :holder_name, null: false
      t.string :card_number, null: false
      t.string :cvc, null: false
      t.date :valid_until, null: false
      t.boolean :is_active
      t.boolean :is_default

      t.timestamps
    end
  end
end
