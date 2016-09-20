require 'rails_helper'

RSpec.describe "portfolio_items/new", type: :view do
  before(:each) do
    assign(:portfolio_item, PortfolioItem.new(
      :title => "MyString",
      :text => "MyText"
    ))
  end

  it "renders new portfolio_item form" do
    render

    assert_select "form[action=?][method=?]", portfolio_items_path, "post" do

      assert_select "input#portfolio_item_title[name=?]", "portfolio_item[title]"

      assert_select "textarea#portfolio_item_text[name=?]", "portfolio_item[text]"
    end
  end
end
