require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      :title => "MyString",
      :stat => "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input[name=?]", "record[title]"

      assert_select "input[name=?]", "record[stat]"
    end
  end
end
