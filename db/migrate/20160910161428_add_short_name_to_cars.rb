class AddShortNameToCars < ActiveRecord::Migration
  def change
    add_column :cars, :short_name, :string
  end
end
