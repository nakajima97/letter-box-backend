require 'rails_helper'

RSpec.describe "Stores", type: :request do
  describe "index" do
    fixtures :stores    
    
    it "normal" do
      get '/api/v1/stores'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['data']).to eq([{"id"=>1, "name"=>"サンプル株式会社"}, {"id"=>2, "name"=>"株式会社初期値"}])
    end

    it "count set" do
      get '/api/v1/stores?count=1'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['data']).to eq([{"id"=>1, "name"=>"サンプル株式会社"}])
    end
  end
  

  describe "/stores/:keyword" do
    fixtures :stores

    it "success" do
      get '/api/v1/stores/search?keyword=%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['data']).to eq([{"id"=>1, "name"=>"サンプル株式会社"}])
    end

    it "no keyword" do
      get '/api/v1/stores/search'
      assert_response_schema_confirm(400)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("The keyword is not entered.")
    end

    it "no data" do
      get '/api/v1/stores/search?keyword=aaa'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("No data")
    end
  end
end
