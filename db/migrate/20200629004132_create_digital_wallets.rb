class CreateDigitalWallets < ActiveRecord::Migration[6.0]
  def change
    create_table :digital_wallets do |t|
      t.references :digital_wallet_list, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.string :name, null: false
      t.string :detail, null: false
      t.boolean :is_active
      t.boolean :is_default

      t.timestamps
    end
  end
end
