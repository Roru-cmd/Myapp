FactoryBot.define do

  factory :task do
      sequence(:t_title)       { |n| "Task #{n}"}
      sequence(:t_descn)       { |n| "Task description #{n}" }
      user_id                  { '10' }
      created_at               { Time.now }
      updated_at               { Time.now + 1.day }
  end

end