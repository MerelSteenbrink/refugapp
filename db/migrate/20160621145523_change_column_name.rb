class ChangeColumnName < ActiveRecord::Migration
  def change
      rename_column :shared_stories, :author, :author_id
      rename_column :shared_stories, :member, :member_id
  end
end
