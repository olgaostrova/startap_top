class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :login
      t.string :password
      t.string :email
      t.string :occupation
      t.string :tags
      t.integer :user_id

      t.timestamps
    end
  end
end
