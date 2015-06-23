require 'rails_helper'

RSpec.describe "forum_threads/new", type: :view do
  before(:each) do
    assign(:forum_thread, ForumThread.new(
      :title => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new forum_thread form" do
    render

    assert_select "form[action=?][method=?]", forum_threads_path, "post" do

      assert_select "input#forum_thread_title[name=?]", "forum_thread[title]"

      assert_select "input#forum_thread_status[name=?]", "forum_thread[status]"
    end
  end
end
