FactoryBot.define do
    factory :task do
      sequence(:t_title)    { |n| "Task #{n}" }      
      sequence(:t_descn)    { |n| n }
      created_at            { Time.now }
      updated_at            { Time.now }
    end
end