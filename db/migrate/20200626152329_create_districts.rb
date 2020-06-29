class CreateDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :districts do |t|
      t.belongs_to :city, index: { unique: true }, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
