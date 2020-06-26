class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.references :province, index: true, foreign_key: true
      t.string :name, null: false
    end
  end
end
