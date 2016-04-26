require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:course) { FactoryGirl.build(:course) }
  
  it { is_expected.to have_many(:classrooms) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_numericality_of(:status).is_greater_than_or_equal_to(0) }

  it "@course" do
    expect("Ruby on Rails").to eq(course.name)
    expect("Is a web development framework").to eq(course.description)
    expect(1).to eq(course.status)
  end
end
