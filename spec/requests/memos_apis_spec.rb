require 'rails_helper'

RSpec.describe "MemosApis", type: :request do
  describe "GET /memos_apis" do
    before do 
      FactoryBot.create_list(:memo, 5)
    end
    it "メモを読み出すこと" do
      get api_memos_path
      expect(response).to have_http_status(200)

      json = JSON.parse(response.body)
      expect(json.length).to eq 5
    end
  end
end
