config.action_mailer.delivery_method = :mailgun
config.action_mailer.mailgun_settings = {
	  api_key: ENV["Mailgun_Api_Key"],
	  domain: ENV["Mailgun_Domain"],
}
