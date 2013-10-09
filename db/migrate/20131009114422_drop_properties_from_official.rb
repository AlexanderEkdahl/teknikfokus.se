class DropPropertiesFromOfficial < ActiveRecord::Migration
  def change
    remove_column :officials, :properties
  end
end
