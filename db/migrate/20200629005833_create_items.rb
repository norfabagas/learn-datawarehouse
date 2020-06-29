class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :item_category, index: true, foreign_key: true
      t.string :name, null: false
      t.numeric :sap_code, null: false, unique: true
      t.boolean :is_active

      t.timestamps
    end
  end
end
