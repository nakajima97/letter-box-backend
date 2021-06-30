require 'rails_helper'

RSpec.describe "Api::V1::Employees", type: :request do
  describe "employees search from store_id" do
    it "success" do
      get '/api/v1/employees/search?store_id=1'
      assert_response_schema_confirm(200)
    end

    it "no store_id" do
      get '/api/v1/employees/search'
      assert_response_schema_confirm(400)
    end

    it "no data" do
      get '/api/v1/employees/search?store_id=0'
      assert_response_schema_confirm(200)
    end
  end
  
end
