Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'eHekmiWlrKWoPFy3qTb0jg','hW1z8VIdEEONpgRZHfpatQWDRibM6aDCE1zX8cmYcc8'
  provider :facebook, '106017016262043','f4951691aa10ca580467d84d6f181de6'
  provider :google, '864823127427.apps.googleusercontent.com','g13Q3S8bjJH7o6-obMJQfhR8'

end