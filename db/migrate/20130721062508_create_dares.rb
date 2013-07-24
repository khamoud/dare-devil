class CreateDares < ActiveRecord::Migration
  def change
    
    create_table :dares do |t|
      t.string :title
      t.text :description
      t.float :target_price
      t.float :current_price
      t.boolean :completed
      t.integer :funding_period
      t.integer :days_passed
      t.references :user

      t.timestamps
    end
    add_index :dares, :user_id
  end
end
