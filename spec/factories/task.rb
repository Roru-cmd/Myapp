FactoryBot.define do
    factory :task do
      sequence(:name)   { |n| "Task #{n}" }
      created_at        { Time.now }
      updated_at        { Time.now }
    end
end