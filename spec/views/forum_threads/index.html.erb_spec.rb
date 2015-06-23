require 'rails_helper'

RSpec.describe "forum_threads/index", type: :view do
  before(:each) do
    assign(:forum_threads, [
      ForumThread.create!(
        :title => "Title",
        :status => "Status"
      ),
      ForumThread.create!(
        :title => "Title",
        :status => "Status"
      )
    ])
  end

  it "renders a list of forum_threads" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
