require 'rails_helper'

RSpec.describe "ForumThreads", type: :request do
  describe "GET /forum_threads" do
    it "works! (now write some real specs)" do
      get forum_threads_path
      expect(response).to have_http_status(200)
    end
  end
end
