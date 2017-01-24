class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, :unique => true
      t.integer :user_id
      t.timestamps
    end
  end
end
