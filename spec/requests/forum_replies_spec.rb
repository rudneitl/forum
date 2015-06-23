require 'rails_helper'

RSpec.describe "ForumReplies", type: :request do
  describe "GET /forum_replies" do
    it "works! (now write some real specs)" do
      get forum_replies_path
      expect(response).to have_http_status(200)
    end
  end
end
