class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :message
      t.string :status
      t.integer :messenger_id
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
