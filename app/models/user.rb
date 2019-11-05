class User < ApplicationRecord
	after_create :welcome_send

  has_many :hosted_events, class_name: 'Event', foreign_key: 'host_id'

  has_many :attendances, foreign_key: 'guest_id'

  has_many :attended_events, :through :attendances, source: :attended_event

  private

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
