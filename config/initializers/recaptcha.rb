if Rails.env.development? || Rails.env.test?
    Recaptcha.configure do |config|
        config.site_key  = Rails.application.credentials.google[:captcha_public]
        config.secret_key = Rails.application.credentials.google[:captcha_private]
    end
end

if Rails.env.production?
    Recaptcha.configure do |config|
        config.public_key  = Rails.application.credentials.google[:captcha_public]
        config.private_key = Rails.application.credentials.google[:captcha_private]
    end
end