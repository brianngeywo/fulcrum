# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
 ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}