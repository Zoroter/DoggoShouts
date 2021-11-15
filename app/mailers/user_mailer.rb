class UserMailer < ApplicationMailer
    if Rails.env.production?
        default :from => "DoggoShouts@gmail.com"
    end

    if Rails.env.development? || Rails.env.test?
        default from: 'from@example.com'
    end


end
