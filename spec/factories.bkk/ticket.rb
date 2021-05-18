FactoryBot.define do
    factory :ticket do
      sequence(:ticket_d)       { |n| "Ticket #{n}" }
      sequence(:ticket_start)   { Time.now }
      sequence(:ticket_end)     { Time.now }
      created_at                { Time.now }
      updated_at                { Time.now }
    end
end