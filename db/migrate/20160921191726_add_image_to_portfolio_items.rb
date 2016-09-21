class AddImageToPortfolioItems < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_items, :image, :string
  end
end
