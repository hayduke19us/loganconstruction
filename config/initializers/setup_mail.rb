ActionMailer::Base.smtp_settings = {
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :domain               => "loganconstruction.herokuapps.com",
  :user_name            => "hayduke19us",
  :password             => "rainflood",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "loganconstruction.herokuapps.com"