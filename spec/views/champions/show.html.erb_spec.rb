require 'rails_helper'

RSpec.describe "champions/show", type: :view do
  before(:each) do
    @champion = assign(:champion, Champion.create!(
      :champion => "Champion",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Champion/)
    expect(rendered).to match(/Description/)
  end
end
