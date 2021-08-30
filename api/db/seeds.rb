Faker::Config.locale = :ja

# 会社を追加
Store.create!(
  name: "サンプル株式会社"
)

Store.create!(
  name: "株式会社初期値"
)

# サンプル株式会社に紐づく従業員を30人追加
30.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Employee.create!(
    first_name: first_name,
    last_name: last_name,
    store_id: 1,
  )
end

# 株式会社初期値に紐づく従業員を30人追加
30.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  Employee.create!(
    first_name: first_name,
    last_name: last_name,
    store_id: 2,
  )
end

# サンプル株式会社の従業員番号1に対するメッセージを追加
10.times do |n|
  Message.create!(
    store_id: 1,
    employee_id: 1,
    message_text: Faker::Lorem.sentence
  )
end

# 株式会社初期値の従業員番号31に対するメッセージを追加
10.times do |n|
  Message.create!(
    store_id: 2,
    employee_id: 31,
    message_text: Faker::Lorem.sentence
  )
end