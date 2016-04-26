require 'rails_helper'

RSpec.describe Classroom, type: :model do
	let(:classroom) { FactoryGirl.build(:classroom) }
  
	it { is_expected.to belong_to(:student) }
	it { is_expected.to belong_to(:course) }

  it "@classroom" do
    expect("Ruby on Rails").to eq(classroom.course.name)
    expect("Huguinho").to eq(classroom.student.name)
    expect("Is a web development framework").to eq(classroom.course.description)
    expect(1).to eq(classroom.course.status)
    expect(1).to eq(classroom.student.status)
  end
end
