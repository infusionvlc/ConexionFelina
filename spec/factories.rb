FactoryBot.define do
  
  factory :user do
    username "Joe"
    email "joe@gmail.com"
    password "blah"
    password_confirmation  "blah"
    role "basic"
    bio "Hello world!"
    purrs 0
  end
  
  factory :location do
    name "valencia"
  end

  factory :colony do
    name "viveros"
    location
  end

  factory :cat do
    name "Joe"
    colony
  end

end