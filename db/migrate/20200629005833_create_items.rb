class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :item_category, index: true, foreign_key: true
      t.string :name, null: false
      t.numeric :sap_code, null: false, unique: true
      t.boolean :is_active, null: false

      t.timestamps
    end
  end
end
