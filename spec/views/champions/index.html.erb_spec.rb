require 'rails_helper'

RSpec.describe "champions/index", type: :view do
  before(:each) do
    assign(:champions, [
      Champion.create!(
        :champion => "Champion",
        :description => "Description"
      ),
      Champion.create!(
        :champion => "Champion",
        :description => "Description"
      )
    ])
  end

  it "renders a list of champions" do
    render
    assert_select "tr>td", :text => "Champion".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
