class Employee < ActiveRecord::Base
	validates :e_id,length:{minimum: 2}, uniqueness: true, numericality: {only_integer: true}
	validates :name, presence: true, length: {minimum: 2}
	validates :exp,length:{maximum: 2}, numericality: {only_integer: true,messege: "Expreince must be numeric value"}
	validates :join_date, presence: true
end
