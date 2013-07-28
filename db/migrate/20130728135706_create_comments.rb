class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :user
      t.references :dare

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :dare_id
  end
end
