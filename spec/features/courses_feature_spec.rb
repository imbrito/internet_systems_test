require "rails_helper"

RSpec.describe CoursesController, type: :feature do
	let(:course) { FactoryGirl.create(:course) }

	it 'create @course' do
		visit new_course_path(:locale => "en")
		fill_in 'Name', :with => course.name
		fill_in 'Description', :with => course.description
		fill_in 'Status', :with => course.status
  	click_button 'Create Course'
	end

	it 'edit @course' do
		visit edit_course_path(:id => course.id.to_s, :locale => "en")
		fill_in 'Name', :with => course.name
		fill_in 'Description', :with => course.description
		fill_in 'Status', :with => course.status
  	click_button 'Update Course'
	end

	it 'show @course' do
		visit course_path(:id => course.id.to_s, :locale => "en")
		page.has_field?('Name:', :with => "#{course.name}")
		page.has_field?('Description:', :with => "#{course.description}")
		page.has_field?('Status:', :with => "#{course.status}")
	end

end
