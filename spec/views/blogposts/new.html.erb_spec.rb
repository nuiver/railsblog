require 'rails_helper'

RSpec.describe "blogposts/new", type: :view do
  before(:each) do
    assign(:blogpost, Blogpost.new(
      :title => "MyString",
      :text => "MyText",
      :featured => false
    ))
  end

  it "renders new blogpost form" do
    render

    assert_select "form[action=?][method=?]", blogposts_path, "post" do

      assert_select "input#blogpost_title[name=?]", "blogpost[title]"

      assert_select "textarea#blogpost_text[name=?]", "blogpost[text]"

      assert_select "input#blogpost_featured[name=?]", "blogpost[featured]"
    end
  end
end
