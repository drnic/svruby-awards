class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :image_url, :string
    add_column :users, :location, :string
    add_column :users, :profile_url, :string
  end

  def self.down
    remove_column :users, :profile_url
    remove_column :users, :location
    remove_column :users, :image_url
  end
end
