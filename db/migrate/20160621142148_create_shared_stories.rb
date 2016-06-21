class CreateSharedStories < ActiveRecord::Migration
  def change
    create_table :shared_stories do |t|
      t.string :title
      t.text :story
      t.integer :author
      t.integer :member

      t.timestamps null: false
    end
  end
end
