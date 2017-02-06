class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.decimal :total_amount
      t.decimal :current_amount
      t.integer :user_id, :unique => true
      t.timestamps
    end
  end
end
