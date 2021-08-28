require 'rails_helper'

RSpec.describe "MemosApis", type: :request do
  describe "GET /memos_apis" do
    it "メモを読み出すこと" do
      get home_path
      expect(response).to have_http_status(200)
    end
  end
end
