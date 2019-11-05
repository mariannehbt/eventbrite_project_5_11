# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_LOGIN'],
  :password => ENV['SENDGRID_PWD'],
  :domain => 'https://eventbriteproject.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# config.action_mailer.delivery_method = :smtp
# config.action_mailer.raise_delivery_errors = true
# config.action_mailer.default_options = {from: 'no-reply@example.com'}
# config.action_mailer.smtp_settings = {
#   address: 'smtp.gmail.com',
#   port: 587,
#   user_name: ENV['MYGMAILUSERNAME'],
#   password: ENV['MYGMAILPASS'],
#   authentication: 'plain',
# }