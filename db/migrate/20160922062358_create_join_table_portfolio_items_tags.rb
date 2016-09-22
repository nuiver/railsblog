class CreateJoinTablePortfolioItemsTags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :portfolio_items, :tags do |t|
      # t.index [:portfolio_item_id, :tag_id]
      # t.index [:tag_id, :portfolio_item_id]
    end
  end
end
