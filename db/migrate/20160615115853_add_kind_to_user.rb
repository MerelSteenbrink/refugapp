class AddKindToUser < ActiveRecord::Migration
  def change
    add_column :users, :kind, :string
  end
end
