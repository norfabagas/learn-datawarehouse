class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.belongs_to :province, index: true, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
