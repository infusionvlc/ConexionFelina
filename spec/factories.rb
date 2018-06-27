FactoryBot.define do

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