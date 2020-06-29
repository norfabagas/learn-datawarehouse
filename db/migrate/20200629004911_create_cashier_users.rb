class CreateCashierUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :cashier_users do |t|
      t.string :identity_number, null: false
      t.string :name, null: false
      t.string :username, null: false, unique: true
      t.string :password, null: false

      t.timestamps
    end
  end
end
