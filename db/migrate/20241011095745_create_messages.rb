class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.string :link_to_origin
      t.string :author_name
      t.references :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
