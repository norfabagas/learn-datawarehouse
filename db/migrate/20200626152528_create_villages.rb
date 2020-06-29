class CreateVillages < ActiveRecord::Migration[6.0]
  def change
    create_table :villages do |t|
      t.belongs_to :sub_district, index: { unique: true }, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
