class AddDescriptionToBlogposts < ActiveRecord::Migration[5.0]
  def change
    add_column :blogposts, :description, :string
  end
end
