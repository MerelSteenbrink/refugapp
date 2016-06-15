class AddUsernameAndPostalcodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :postal_code, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
