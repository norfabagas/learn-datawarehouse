class CreateCreditCardLists < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_card_lists do |t|
      t.string :name, null: false
      t.string :detail, null: false
      t.boolean :is_active

      t.timestamps
    end
  end
end
