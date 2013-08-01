class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.text :bug

      t.timestamps
    end
  end
end
