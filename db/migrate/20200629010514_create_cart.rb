class CreateCart < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.numeric :discount

      t.timestamps
    end
  end
end
