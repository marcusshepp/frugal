class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
	  t.decimal :price
	  t.integer :category_id, :null => false
	  t.integer :user_id, :null => false
      t.timestamps
    end
  end
end
