require 'rails_helper'

RSpec.describe "Stores", type: :request do
  describe "/stores/:keyword" do
    it "success" do
      get '/api/v1/stores/search?keyword=aaa'
      assert_response_schema_confirm(200)
    end
  end
end
