class AddBlogimageToBlogposts < ActiveRecord::Migration[5.0]
  def change
    add_column :blogposts, :blogimage, :string
  end
end
