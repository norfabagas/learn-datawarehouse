class CreateSubDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_districts do |t|
      t.references :district, index: true, foreign_key: true
      t.string :name, null: false
    end
  end
end
