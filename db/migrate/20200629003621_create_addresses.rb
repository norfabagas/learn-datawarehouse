class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :customer, index: { unique: true }, foreign_key: true
      t.belongs_to :village, index: { unique: true }, foreign_key: true
      t.belongs_to :postal_code, index: true, foreign_key: true
      t.text :full_address, null: false
      t.text :address_hint
      t.boolean :is_active
      t.boolean :is_default

      t.timestamps
    end
  end
end
