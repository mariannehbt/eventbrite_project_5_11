class Event < ApplicationRecord
	has_many :attendances
	has_many :users, through: :attendances
	belongs_to :user

	validates :start_date, presence: true
	# validate :start_date_not_in_the_past_?

	validates :duration, 
		presence: true

	validates :title, 
		presence: true,
		length: {in: 5..140, message: "length must be between 5 and 140 characters long"}

	validates :description, 
		presence: true,
		length: {in: 20..1000, message: "length must be between 20 and 1 000 characters long"}

	validates :price, 
		presence: true,
		numericality: { only_integer: true, greater_than: 1, less_than: 1000 }

	validates :location, presence: true

	# private

	# def start_date_not_in_the_past_?
	# 	return if start_date == Time.now

	# 	else
	# 		errors.add(:start_date, "Not good date")
	# 	end
	# end

end




