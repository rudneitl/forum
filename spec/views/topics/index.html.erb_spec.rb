require 'rails_helper'

RSpec.describe "topics/index", type: :view do
  before(:each) do
    assign(:topics, [
      Topic.create!(
        :description => "Description",
        :status => "Status",
        :topic => nil
      ),
      Topic.create!(
        :description => "Description",
        :status => "Status",
        :topic => nil
      )
    ])
  end

  it "renders a list of topics" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
