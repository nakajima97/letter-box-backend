require 'rails_helper'

RSpec.describe "Api::V1::Messages", type: :request do
  describe "GET /api/v1/messages" do
    it "メッセージ一覧を取得" do
      get '/api/v1/messages'
      assert_response_schema_confirm(200)
    end

    it "従業員IDを指定してメッセージ一覧を取得" do
      get '/api/v1/messages?employee_id=1'
      assert_response_schema_confirm(200)
    end
  end

  describe "POST /api/v1/messages" do
    it "success" do
      post '/api/v1/messages', params: { store_id: 1, employee_id:1, message_text: "test" }
      assert_response_schema_confirm(201)
    end

    it "failure" do
      post '/api/v1/messages', params: { employee_id:1, message_text: "test" }
      assert_response_schema_confirm(400)
    end
  end
end
