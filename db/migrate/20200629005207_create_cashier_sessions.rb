class CreateCashierSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :cashier_sessions do |t|
      t.references :cashier_user, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true
      t.time :started_at, null: false
      t.time :ended_at, null: false

      t.timestamps
    end
  end
end
