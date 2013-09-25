class CreateOfficialRolesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :officials, :roles do |t|
      t.index [:official_id, :role_id]
      t.index [:role_id, :official_id], unique: true
    end
  end
end
