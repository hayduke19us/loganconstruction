ActionMailer::Base.smtp_settings = {
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :domain               => "sendgrid.com",
  :user_name            => "hayduke19us",
  :password             => "rainflood",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

