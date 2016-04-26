require "rails_helper"

RSpec.describe ClassroomsController, type: :feature do
	let(:student) { FactoryGirl.create(:student) }

	it 'create @student' do
		visit new_student_path(:locale => "en")
		fill_in 'Name', :with => student.name
		fill_in 'Register number', :with => student.register_number
		fill_in 'Status', :with => student.status
  	click_button 'Create Student'
	end

	it 'edit @student' do
		visit edit_student_path(:id => student.id.to_s, :locale => "en")
		fill_in 'Name', :with => student.name
		fill_in 'Register number', :with => student.register_number
		fill_in 'Status', :with => student.status
  	click_button 'Update Student'
	end

	it 'show @student' do
		visit student_path(:id => student.id.to_s, :locale => "en")
		page.has_field?('Name:', :with => "#{student.name}")
		page.has_field?('Register number:', :with => "#{student.register_number}")
		page.has_field?('Status:', :with => "#{student.status}")
	end

end
