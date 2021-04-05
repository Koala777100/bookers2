class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.integer :id
      t.string :user_image
      t.text :title
      t.text :opinion

    end
  end
end
