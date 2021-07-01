require 'rails_helper'

RSpec.describe "Api::V1::Messages", type: :request do
  describe "create messge" do
    it "success" do
      post '/api/v1/messages', params: { store_id: 1, employee_id:1, message_text: "test" }
      assert_response_schema_confirm(200)
    end
  end
end
