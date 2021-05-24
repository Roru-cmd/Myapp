FactoryBot.define do

  factory :user do
      sequence(:name)         { |n| "User#{n}" }
      time                    { DateTime.now }                
      created_at              { Time.now }
      updated_at              { Time.now }

      trait :number do
          name  {rand(700..1000)}
      end
  end

end
