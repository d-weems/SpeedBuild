FactoryBot.define do
  factory :lego_set do
    set_number "8017"
    name "Darth Vader's TIE Fighter"
    piece_count 251
  end

  factory :category do
    name "Ordered"
    description "Unassisted set construction following the build order outlined in the instruction booklet."
  end

  factory :user do
    username "admin"
    password "secret"
    password_confirmation "secret"
  end

  factory :set_run do
    association :lego_set
    association :category
    association :user
    milliseconds 900000
    run_date Date.current
  end
end