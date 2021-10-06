Faker::Config.locale = :ja

# 店舗を1店舗作成
store_auth = StoreAuth.create!("store_login_id": "password", "password": "passowrd")
store_auth.build_store(name: "コンビニエンスストア").save

# 追加した店舗に従業員を5名追加
5.times do |n|
  employee_auth = EmployeeAuth.create!("employee_login_id": "password#{n}", "password": "password")
  employee_auth.build_employee("first_name": Faker::Name.first_name, "last_name": Faker::Name.last_name, "store_id": 1).save
end
