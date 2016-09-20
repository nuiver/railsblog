class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :text
      t.boolean :featured

      t.timestamps
    end
  end
end
