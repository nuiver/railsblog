require 'rails_helper'

RSpec.describe "blogposts/index", type: :view do
  before(:each) do
    assign(:blogposts, [
      Blogpost.create!(
        :title => "Title",
        :text => "MyText",
        :featured => false
      ),
      Blogpost.create!(
        :title => "Title",
        :text => "MyText",
        :featured => false
      )
    ])
  end

  it "renders a list of blogposts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
