class RemoveAuthorFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :author_id, :integer
  end
end
