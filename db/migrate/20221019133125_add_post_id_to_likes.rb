class AddPostIdToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :post_id, :integer
  end
end
