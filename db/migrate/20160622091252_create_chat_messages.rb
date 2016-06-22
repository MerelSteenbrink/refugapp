class CreateChatMessages < ActiveRecord::Migration
  def change
    create_table :chat_messages do |t|
      t.text :content
      t.references :request, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
