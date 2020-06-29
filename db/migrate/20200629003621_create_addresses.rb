class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :village, index: true, foreign_key: true
      t.references :postal_code, index: true, foreign_key: true
      t.text :full_address, null: false
      t.text :address_hint
      t.boolean :is_active
      t.boolean :is_default

      t.timestamps
    end
  end
end
