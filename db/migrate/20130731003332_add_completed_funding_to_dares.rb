class AddCompletedFundingToDares < ActiveRecord::Migration
  def change
    add_column :dares, :completed_funding, :boolean
  end
end
