class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :likes
      t.integer :dislikes
      t.integer :taps
      t.string :link_to_origin
      t.string :author_name
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
