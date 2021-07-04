require 'rails_helper'

RSpec.describe "Api::V1::Employees", type: :request do
  describe "employees search from store_id" do
    fixtures :employees

    it "success" do
      get '/api/v1/employees/search?store_id=1'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['employees']).to eq([{"first_name"=>"sample", "id"=>1, "last_name"=>"foo"}, {"first_name"=>"foo", "id"=>2, "last_name"=>"bar"}])
      expect(res['store_id']).to eq(1)
    end

    it "no store_id" do
      get '/api/v1/employees/search'
      assert_response_schema_confirm(400)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("The store_id is not entered.")
    end

    it "no data" do
      get '/api/v1/employees/search?store_id=0'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("No data")
    end
  end
  
end
