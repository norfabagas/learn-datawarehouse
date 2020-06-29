class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_code, null: false
      t.string :name, null: false
      t.string :email, null: false, unique: true, index: true
      t.string :password, null: false
      t.numeric :age, null: false
      t.string :gender, null: false
      t.time :verified_at

      t.timestamps
    end
  end
end
