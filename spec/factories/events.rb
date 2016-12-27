FactoryGirl.define do
  factory :event do
    id 1
    user_id 1
    title "ほげほげ"
    disp_flg true
    start_at { Time.now }
    finish_at { Time.now }
    all_day false
    created_at { Time.now }
    updated_at { Time.now }

    trait :blunk_title do
      title ""
    end

    trait :ongoing do
      finish_at {1.hours.ago}
    end

    trait :available do
      id 2
      disp_flg true
    end

    trait :not_available do
      id 3
      disp_flg false
    end
  end
end
