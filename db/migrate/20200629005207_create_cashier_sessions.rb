class CreateCashierSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :cashier_sessions do |t|
      t.belongs_to :cashier_user, index: { unique: true }, foreign_key: true
      t.belongs_to :store, index: { unique: true }, foreign_key: true
      t.time :started_at, null: false
      t.time :ended_at, null: false

      t.timestamps
    end
  end
end
