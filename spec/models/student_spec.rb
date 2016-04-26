require 'rails_helper'

RSpec.describe Student, type: :model do
  let(:student) { FactoryGirl.build(:student) }
  
  it { is_expected.to have_many(:classrooms) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:register_number) }
  it { is_expected.to validate_uniqueness_of(:register_number) }
  it { is_expected.to validate_numericality_of(:status).is_greater_than_or_equal_to(0) }

  it "@student" do
    expect("Huguinho").to eq(student.name)
    expect(1).to eq(student.status)
  end
end
