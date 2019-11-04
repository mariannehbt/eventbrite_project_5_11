class Attendance < ApplicationRecord
	# after_create :information_send

	belongs_to :user 
	belongs_to :event

	# def information_send
 #    attendee = AttendanceMailer.new
 #    information_email(attendee).deliver_now
 #  end

end
