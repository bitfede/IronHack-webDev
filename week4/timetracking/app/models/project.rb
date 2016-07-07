class Project < ApplicationRecord

  def self.clean_old

  	Project.where("created_at <= ?" ,Time.now - 1.month)

  end

  def self.hello
  	p "HELLOOOOOOO----------------------"
  end

	has_many :time_entries
	validates :name, presence: true ,
	 length: {maximum: 30}

end
