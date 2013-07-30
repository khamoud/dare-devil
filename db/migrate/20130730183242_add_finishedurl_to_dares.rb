class AddFinishedurlToDares < ActiveRecord::Migration
  def change
    add_column :dares, :finshedurl, :string
  end
end
