class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.integer :chat_number
      t.integer :messeges_counter
      t.integer :participants_counter
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
