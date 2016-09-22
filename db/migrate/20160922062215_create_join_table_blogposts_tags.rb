class CreateJoinTableBlogpostsTags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :blogposts, :tags do |t|
      # t.index [:blogpost_id, :tag_id]
      # t.index [:tag_id, :blogpost_id]
    end
  end
end
