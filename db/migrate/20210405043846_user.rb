class User < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :id
      t.text :user_name
      t.string :user_image
      t.text :email
      t.text :password
      t.text :introduction
    end
  end
end
