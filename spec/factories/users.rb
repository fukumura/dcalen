FactoryGirl.define do
  factory :user do
    id 1
    name "fukumura"
    email "fukumura.akinori+dcalen1@gmail.com"
    password_digest "$2a$10$ustmqM8EwA8kXz6DMrkx/.y3OgnGqt8cd90DbMXHy9N5fKvRK8.06"
    salt "tVBFo3AFXSFxsXHowvf1"
    created_at { Time.now }
    updated_at { Time.now }

    trait :blunk_name do
      name ""
    end
    trait :blunk_email do
      email ""
    end
  end
end
