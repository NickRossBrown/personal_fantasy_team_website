require 'rails_helper'

RSpec.describe "abouts/new", type: :view do
  before(:each) do
    assign(:about, About.new(
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new about form" do
    render

    assert_select "form[action=?][method=?]", abouts_path, "post" do

      assert_select "input[name=?]", "about[title]"

      assert_select "input[name=?]", "about[description]"
    end
  end
end
