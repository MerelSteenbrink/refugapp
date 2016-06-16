class AddCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    remove_column :users, :latitude
    remove_column :users, :longitude
    remove_column :users, :postal_code
  end
end
