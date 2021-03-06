class CreateSubDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_districts do |t|
      t.belongs_to :district, index: true, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
