class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.integer :item_id
      t.decimal :amount
      t.timestamps
    end
  end
end
