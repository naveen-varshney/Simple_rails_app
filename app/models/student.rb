class Student < ActiveRecord::Base
	
	has_many :subjects,  dependent: :destroy
	accepts_nested_attributes_for :subjects
	validates :name, presence: true, length: {minimum: 2}
	validates :age, numericality: {messege: "Age must be numeric value"}
	validates :course, presence: true
end
