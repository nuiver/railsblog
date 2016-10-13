class AddAlternativeTextToBlogposts < ActiveRecord::Migration[5.0]
  def change
    add_column :blogposts, :alternative_text, :string
  end
end
