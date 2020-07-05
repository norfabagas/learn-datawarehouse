class CreateCashierSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :cashier_sessions do |t|
      t.belongs_to :cashier_user, index: true, foreign_key: true
      t.belongs_to :store, index: true, foreign_key: true
      t.timestamp :start_at, null: false
      t.timestamp :end_at, null: false

      t.timestamps
    end
  end
end
