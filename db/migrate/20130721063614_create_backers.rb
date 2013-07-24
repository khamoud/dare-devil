class CreateBackers < ActiveRecord::Migration
  def change

    create_table :backers do |t|
      t.float :amount
      t.references :user
      t.references :dare

      t.timestamps
    end
    add_index :backers, :user_id
    add_index :backers, :dare_id
  end
end
