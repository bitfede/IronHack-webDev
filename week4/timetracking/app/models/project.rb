class Project < ApplicationRecord

		has_many :time_entries

		validates :name, presence: true ,
	 	length: {maximum: 30}


  def self.clean_old

  	Project.where("created_at <= ?" ,Time.now - 1.month)

  end

end
