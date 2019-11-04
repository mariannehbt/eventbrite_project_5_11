class AttendanceMailer < ApplicationMailer
	default from: 'no-reply@monsite.fr'

	def initialize(attendee)
    #on récupère l'instance event pour ensuite pouvoir la passer à la view en @user
    @attendee = attendee

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://eventbriteproject.herokuapp.com/' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @attendee.user.email, subject: 'Nouvel évènement créé !') 
  end
end
