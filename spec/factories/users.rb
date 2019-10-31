FactoryBot.define do
  factory :user do
    password = Faker::Internet.password(min_length: 8)
    email {Faker::Internet.free_email}
    password {password}
    password_confirmation {password}
  end
end