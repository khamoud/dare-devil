class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :dare
      t.string :url

      t.timestamps
    end
    add_index :videos, :dare_id
  end
end
