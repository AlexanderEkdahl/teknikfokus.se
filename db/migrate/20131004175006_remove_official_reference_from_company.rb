class RemoveOfficialReferenceFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :official_id
  end
end
