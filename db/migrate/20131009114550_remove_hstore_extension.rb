class RemoveHstoreExtension < ActiveRecord::Migration
  def up
    # execute 'DROP EXTENSION hstore'
  end

  def down
    # execute 'CREATE EXTENSION hstore'
  end
end
