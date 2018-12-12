FactoryBot.define do

  factory :user do
    username { "Joe" }
    email { "joe@gmail.com" }
    password { "blahblah2" }
    password_confirmation { "blahblah2" }
    bio { "Hello world!" }
    purrs { 0 }

    trait :volunteer do
      role { :volunteer }
    end

    trait :basic do
      role { :basic }
    end

    trait :admin do
      role { :admin }
    end
  end


  factory :location do
    name { "valencia" }
  end

  factory :colony do
    name { "viveros" }
    location
  end

  factory :cat do
    name { "Joe" }
    bio { "Hello world" }
    saved_state { "active" }
    birthday_date { Date.yesterday }
    colony
  end
end