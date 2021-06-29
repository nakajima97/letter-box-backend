require 'rails_helper'

RSpec.describe "Stores", type: :request do
  describe "index" do
    it "test" do
      get '/api/v1/stores'
      assert_response_schema_confirm(200)
    end
  end

  describe "/stores/:keyword" do
    it "keyword test" do
      get '/api/v1/stores/aaa'
      assert_response_schema_confirm(200)
    end
  end
end
