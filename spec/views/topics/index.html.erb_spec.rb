require 'rails_helper'

RSpec.describe "topics/index", type: :view do
  before(:each) do
    assign(:topics, [
      Topic.create!(
        :description => "Description",
        :status => "active",
        :topic => nil
      ),
      Topic.create!(
        :description => "Description",
        :status => "active",
        :topic => nil
      )
    ])
  end

  it "renders a list of topics" do
    @total = 2
    @limit = 10
    @page = 0
    render
    assert_select "ul>li", :text => /Description/, :count => 2
  end
end
