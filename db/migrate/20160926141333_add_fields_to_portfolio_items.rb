class AddFieldsToPortfolioItems < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_items, :live_url, :string
    add_column :portfolio_items, :gh_url, :string
  end
end
