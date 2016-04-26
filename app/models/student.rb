class Student < ActiveRecord::Base
	has_many :classrooms, :dependent => :destroy
	validates :name, :register_number, presence: true
	validates_uniqueness_of :register_number
	validates :status, :numericality => { :greater_than_or_equal_to => 0 }
end
