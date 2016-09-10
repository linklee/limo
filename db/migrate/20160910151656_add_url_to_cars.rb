class AddUrlToCars < ActiveRecord::Migration
  def change
    add_column :cars, :url, :string
  end
end
