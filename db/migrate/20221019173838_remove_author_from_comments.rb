class RemoveAuthorFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :author_id, :integer
    remove_column :comments, :post_id, :integer
    remove_column :likes, :author_id, :integer
    remove_column :likes, :post_id, :integer
  end
end
