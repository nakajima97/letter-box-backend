require 'rails_helper'

RSpec.describe "Api::V1::Employees", type: :request do
  describe "GET /api/v1/employees" do
    fixtures :employees

    it "店舗IDが1の店舗の従業員一覧を取得する" do
      get '/api/v1/employees/search?store_id=1'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['employees']).to eq([{"first_name"=>"sample", "id"=>1, "last_name"=>"foo"}, {"first_name"=>"foo", "id"=>2, "last_name"=>"bar"}])
      expect(res['store_id']).to eq(1)
    end

    it "店舗IDを指定せず従業員一覧を取得しようとしたため失敗する" do
      get '/api/v1/employees/search'
      assert_response_schema_confirm(400)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("The store_id is not entered.")
    end

    it "店舗IDを指定したがその店舗に従業員がいないため一覧を取得できない" do
      get '/api/v1/employees/search?store_id=0'
      assert_response_schema_confirm(200)
      res = JSON.parse(response.body)
      expect(res['message']).to eq("No data")
    end
  end
end
