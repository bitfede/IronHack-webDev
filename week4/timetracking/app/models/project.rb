class Project < ApplicationRecord
	has_many :time_entries
	validates :name, presence: true ,
	 format: {with: /\A[a-zA-Z0-9\.'\-]+\z/ , message: "only allows alphanumeric characters"},
	 length: {maximum: 30}
end
