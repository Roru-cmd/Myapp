FactoryBot.define do

  factory :ticket do
      sequence(:ticket_d)      { |n| "Description #{n}" }
      ticket_start             { Time.now }
      ticket_end               { Time.now }
      sequence(:user_id)       { |n| "user_id #{n}" }
      #sequence(:task_id)       { |n| "task_id #{n}" }
      task_id                  { '22' }
      created_at               { Time.now - 1.day }
      updated_at               { Time.now }

      trait :number do
        user_id  {rand(0..30)}        
    end

  end

end