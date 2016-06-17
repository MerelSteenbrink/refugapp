class AddPhotoAndDescriptionToUser < ActiveRecord::Migration
  def change
    add_column :users, :photo, :string
    add_column :users, :photo_cache, :string
    add_column :users, :description, :text
  end
end
