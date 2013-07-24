class AddUrlToDares < ActiveRecord::Migration
  def change
    add_column :dares, :url, :string
  end
end
