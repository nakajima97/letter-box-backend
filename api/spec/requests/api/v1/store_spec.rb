require 'rails_helper'

RSpec.describe "Stores", type: :request do
  describe "GET /api/v1/stores" do
    fixtures :stores 

    it "店舗一覧を取得する" do    
      get '/api/v1/stores'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['data']).to eq([{"id"=>1, "name"=>"サンプル株式会社"}, {"id"=>2, "name"=>"株式会社初期値"}])
    end

    it "店舗一覧を取得する際に上限を設定する" do
      get '/api/v1/stores?count=1'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['data']).to eq([{"id"=>1, "name"=>"サンプル株式会社"}])
    end
  end
  

  describe "GET /api/v1/stores/:keyword" do
    fixtures :stores 
    
    it "店舗名に指定したキーワードが含まれている店舗だけを取得する" do
      get '/api/v1/stores/search?keyword=%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['data']).to eq([{"id"=>1, "name"=>"サンプル株式会社"}])
    end

    it "キーワードを指定せずにキーワード検索を試みる" do
      get '/api/v1/stores/search'
      assert_response_schema_confirm(400)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("The keyword is not entered.")
    end

    it "検索したが、0件だった" do
      get '/api/v1/stores/search?keyword=aaa'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("No data")
    end
  end
end
