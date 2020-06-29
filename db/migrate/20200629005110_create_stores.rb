class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :is_active

      t.timestamps
    end
  end
end
