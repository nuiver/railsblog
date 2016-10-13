class AddDescriptionToPortfolioItems < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_items, :description, :string
  end
end
