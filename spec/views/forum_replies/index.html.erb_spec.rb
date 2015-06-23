require 'rails_helper'

RSpec.describe "forum_replies/index", type: :view do
  before(:each) do
    assign(:forum_replies, [
      ForumReply.create!(
        :title => "Title",
        :status => "Status",
        :forum_thread => "",
        :forum_reply => nil
      ),
      ForumReply.create!(
        :title => "Title",
        :status => "Status",
        :forum_thread => "",
        :forum_reply => nil
      )
    ])
  end

  it "renders a list of forum_replies" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
