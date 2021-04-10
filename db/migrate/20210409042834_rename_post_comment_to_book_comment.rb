class RenamePostCommentToBookComment < ActiveRecord::Migration[5.2]
  def change
    rename_table :book_comments, :book_comments
  end
end
