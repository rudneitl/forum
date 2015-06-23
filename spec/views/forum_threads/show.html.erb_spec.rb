require 'rails_helper'

RSpec.describe "forum_threads/show", type: :view do
  before(:each) do
    @forum_thread = assign(:forum_thread, ForumThread.create!(
      :title => "Title",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Status/)
  end
end
