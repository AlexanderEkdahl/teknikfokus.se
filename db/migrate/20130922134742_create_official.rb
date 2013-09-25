class CreateOfficial < ActiveRecord::Migration
  def change
    create_table :officials do |t|
      t.hstore :properties
      t.references :role
    end
  end
end
