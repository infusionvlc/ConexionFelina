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

end