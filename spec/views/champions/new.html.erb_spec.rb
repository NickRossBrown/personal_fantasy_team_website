require 'rails_helper'

RSpec.describe "champions/new", type: :view do
  before(:each) do
    assign(:champion, Champion.new(
      :champion => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new champion form" do
    render

    assert_select "form[action=?][method=?]", champions_path, "post" do

      assert_select "input[name=?]", "champion[champion]"

      assert_select "input[name=?]", "champion[description]"
    end
  end
end
