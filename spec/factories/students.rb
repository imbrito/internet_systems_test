FactoryGirl.define do
  factory :student, :class => Student do
    name "Huguinho"
    sequence(:register_number) {|n| "0123456789-#{n}" }
    status 1
  end

  factory :invalid_student, :class => Student do
    name nil
    register_number nil
    status nil
  end
end
