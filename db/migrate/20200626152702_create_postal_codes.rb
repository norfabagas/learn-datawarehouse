class CreatePostalCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :postal_codes do |t|
      t.references :village, index: true, foreign_key: true
      t.string :post_code, null: false

      t.timestamps
    end
  end
end
