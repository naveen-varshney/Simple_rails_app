class Subject < ActiveRecord::Base
	belongs_to :student
	validates :sub_name, presence: true
	
end
