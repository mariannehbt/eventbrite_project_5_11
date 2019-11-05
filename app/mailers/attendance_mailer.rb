class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
  
  def new_guest_email(user)
    @user = user
    @url = 'https://eventbriteproject.herokuapp.com/'
    mail(to: @user.email, subject: 'Nouvel évènement créé !')
  end
end