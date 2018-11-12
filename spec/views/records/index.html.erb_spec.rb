require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        :title => "Title",
        :stat => "Stat"
      ),
      Record.create!(
        :title => "Title",
        :stat => "Stat"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Stat".to_s, :count => 2
  end
end
