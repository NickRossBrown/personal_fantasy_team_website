class AddPostsToWeeks < ActiveRecord::Migration[5.2]
 
  def change
    add_column(:posts, :week_id, :int)
  end
  
end
