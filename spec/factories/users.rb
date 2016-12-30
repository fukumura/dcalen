FactoryGirl.define do
  factory :user do
    id 1
    name "福村"
    email true
    password_digest "$2a$10$nDh7cWXFX1Q3FAiQnuHc6eX0AFDXpfKmM6hb9sn5EDk2naxIX/DR"
    salt "ZcyGUGPtiPWnD6MpYAsc"
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
