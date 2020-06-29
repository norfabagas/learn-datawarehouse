class CreateVillages < ActiveRecord::Migration[6.0]
  def change
    create_table :villages do |t|
      t.references :sub_district, index: true, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
