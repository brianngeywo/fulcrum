# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
 ActionMailer::Base.smtp_settings = {
  :user_name => "#{Rails.application.credentials.twilio[:user_name]}",
  :password => "#{Rails.application.credentials.twilio[:password]}",
  :domain => "#{Rails.application.credentials.twilio[:domain]}",
  :address => "#{Rails.application.credentials.twilio[:address]}",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}