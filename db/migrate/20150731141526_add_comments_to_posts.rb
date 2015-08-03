class AddCommentsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    #excellent!
  end
end
