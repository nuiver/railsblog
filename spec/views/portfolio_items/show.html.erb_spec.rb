require 'rails_helper'

RSpec.describe "portfolio_items/show", type: :view do
  before(:each) do
    @portfolio_item = assign(:portfolio_item, PortfolioItem.create!(
      :title => "Title",
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
