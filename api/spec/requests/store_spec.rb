require 'rails_helper'

RSpec.describe "Stores", type: :request do
  include Committee::Rails::Test::Methods  

  # committee用のコード。動作しないのでコメントアウト。
  # describe "get stores" do
  #   it "test" do
  #     get '/stores/aaa'
  #     assert_response_schema_confirm
  #   end
  # end
end
