  class AddSizeToOfficial < ActiveRecord::Migration
  def change
    add_column :officials, :size, :string

    Official.reset_column_information

    Official.all.each do |o|
      o.update(size: o.properties['size'])
    end
  end
end
