require 'rails_helper'

RSpec.describe "abouts/index", type: :view do
  before(:each) do
    assign(:abouts, [
      About.create!(
        :title => "Title",
        :description => "Description"
      ),
      About.create!(
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of abouts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
