class CreateStartups < ActiveRecord::Migration[7.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :author_name
      t.string :description
      t.string :tags
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
