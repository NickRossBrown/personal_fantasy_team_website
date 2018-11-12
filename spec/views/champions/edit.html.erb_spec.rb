require 'rails_helper'

RSpec.describe "champions/edit", type: :view do
  before(:each) do
    @champion = assign(:champion, Champion.create!(
      :champion => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit champion form" do
    render

    assert_select "form[action=?][method=?]", champion_path(@champion), "post" do

      assert_select "input[name=?]", "champion[champion]"

      assert_select "input[name=?]", "champion[description]"
    end
  end
end
