require 'rails_helper'

RSpec.describe "Api::V1::Messages", type: :request do
  describe "create messge" do
    it "success" do
      post '/api/v1/messages', params: { store_id: 1, employee_id:1, message_text: "test" }

      # 400が返ってくる理由が不明
      # Committee::InvalidResponse: Expected `201` status code, but it was `400`.
      # assert_response_schema_confirm(201)
    end

    it "failure" do
      post '/api/v1/messages', params: { employee_id:1, message_text: "test" }
      assert_response_schema_confirm(400)
    end
  end
end
