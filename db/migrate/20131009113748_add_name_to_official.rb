class AddNameToOfficial < ActiveRecord::Migration
  def change
    add_column :officials, :name, :string

    Official.reset_column_information

    Official.all.each do |o|
      o.update(name: o.properties['name'])
    end
  end
end
