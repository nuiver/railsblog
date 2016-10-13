class AddAlternativeTextToPortfolioItems < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_items, :alternative_text, :string
  end
end
