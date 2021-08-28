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

  describe "POST /memos_apis" do
    it "メモを作成できること" do
      expect{
        post api_memos_path ,params: {
          title: "sample title",
          description: "sample description"
        }
      }.to change(Memo, :count).by(1)
      
      expect(response).to have_http_status(:success)
    end
  end
end
