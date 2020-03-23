Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = "no-reply@moviesonrails.herokuapp.com"
  config.rotate_csrf_on_sign_in = true
end
