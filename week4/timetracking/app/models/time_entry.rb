class TimeEntry < ApplicationRecord
	belongs_to :project
	validates :hours, numericality: true
	validates :minutes, numericality: true
end
