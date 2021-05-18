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

    factory :task do
        sequence(:t_title)       { |n| "Task#{n}"}
        sequence(:t_descn)       { |n| n }
        created_at               { Time.now }
        updated_at               { Time.now + 1.day }
    end

    factory :ticket do
        sequence(:ticket_d)      { |n| "Ticket#{n}" }
        sequence(:ticket_start)  { Time.now }
        sequence(:ticket_end)    { Time.now }
        created_at               { Time.now }
        updated_at               { Time.now + 1.day }
    end

end


