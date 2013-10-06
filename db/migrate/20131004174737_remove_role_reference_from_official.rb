class RemoveRoleReferenceFromOfficial < ActiveRecord::Migration
  def change
    remove_column :officials, :role_id
  end
end
