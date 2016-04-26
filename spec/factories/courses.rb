FactoryGirl.define do
  factory :course, :class => Course  do
    name "Ruby on Rails"
    description "Is a web development framework"
    status 1
  end

  factory :invalid_course, :class => Course do
    name nil
    description nil
    status nil
  end
end
