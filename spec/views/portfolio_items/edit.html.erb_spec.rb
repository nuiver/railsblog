require 'rails_helper'

RSpec.describe "portfolio_items/edit", type: :view do
  before(:each) do
    @portfolio_item = assign(:portfolio_item, PortfolioItem.create!(
      :title => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit portfolio_item form" do
    render

    assert_select "form[action=?][method=?]", portfolio_item_path(@portfolio_item), "post" do

      assert_select "input#portfolio_item_title[name=?]", "portfolio_item[title]"

      assert_select "textarea#portfolio_item_text[name=?]", "portfolio_item[text]"
    end
  end
end
