require 'rails_helper'

RSpec.describe "forum_replies/new", type: :view do
  before(:each) do
    assign(:forum_reply, ForumReply.new(
      :title => "MyString",
      :status => "MyString",
      :forum_thread => "",
      :forum_reply => nil
    ))
  end

  it "renders new forum_reply form" do
    render

    assert_select "form[action=?][method=?]", forum_replies_path, "post" do

      assert_select "input#forum_reply_title[name=?]", "forum_reply[title]"

      assert_select "input#forum_reply_status[name=?]", "forum_reply[status]"

      assert_select "input#forum_reply_forum_thread[name=?]", "forum_reply[forum_thread]"

      assert_select "input#forum_reply_forum_reply_id[name=?]", "forum_reply[forum_reply_id]"
    end
  end
end
