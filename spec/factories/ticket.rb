FactoryBot.define do
    factory :ticket do
      sequence(:name)   { |n| "Ticket #{n}" }
      created_at        { Time.now }
      updated_at        { Time.now }
    end
end