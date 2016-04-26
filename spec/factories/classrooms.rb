FactoryGirl.define do
  factory :classroom, :class => Classroom do
    association :student, factory: :student
    association :course, factory: :course
  end

  factory :invalid_classroom, :class => Classroom do
    #association :student, nil
    #association :course, nil
  end
end
