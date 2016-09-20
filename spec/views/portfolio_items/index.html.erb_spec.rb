require 'rails_helper'

RSpec.describe "portfolio_items/index", type: :view do
  before(:each) do
    assign(:portfolio_items, [
      PortfolioItem.create!(
        :title => "Title",
        :text => "MyText"
      ),
      PortfolioItem.create!(
        :title => "Title",
        :text => "MyText"
      )
    ])
  end

  it "renders a list of portfolio_items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
