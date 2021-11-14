Recaptcha.configure do |config|
    config.site_key  = Rails.application.credentials.dig(:google, :captcha_public)
    config.secret_key = Rails.application.credentials.dig(:google, :captcha_private)
end

