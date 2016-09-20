require 'rails_helper'

RSpec.describe "blogposts/edit", type: :view do
  before(:each) do
    @blogpost = assign(:blogpost, Blogpost.create!(
      :title => "MyString",
      :text => "MyText",
      :featured => false
    ))
  end

  it "renders the edit blogpost form" do
    render

    assert_select "form[action=?][method=?]", blogpost_path(@blogpost), "post" do

      assert_select "input#blogpost_title[name=?]", "blogpost[title]"

      assert_select "textarea#blogpost_text[name=?]", "blogpost[text]"

      assert_select "input#blogpost_featured[name=?]", "blogpost[featured]"
    end
  end
end
