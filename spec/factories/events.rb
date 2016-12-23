FactoryGirl.define do
  factory :event do
    id 1
    user_id 1
    title "ほげほげ"
    disp_flg 1
    start { Date.tomorrow }
#    end { Date.tomorrow }
    allDay 0
    created_at { Time.now }
    updated_at { Time.now }

    trait :blunk_title do
      title ""
    end

  end
end
