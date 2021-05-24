FactoryBot.define do

  factory :ticket do
      sequence(:ticket_d)      { |n| "Ticket#{n}" }
      ticket_start             { Time.now }
      ticket_end               { Time.now }
      sequence(:user_id)       { |n| "user_id #{n}" }
      created_at               { Time.now }
      updated_at               { Time.now + 1.day }
  end

end