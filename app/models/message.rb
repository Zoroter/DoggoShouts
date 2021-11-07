class Message < ApplicationRecord
  belongs_to :user

  def as_json(options)
    super(options).merge(user_avatar_url: user.gravatar_url)
  end
  
  validates :message, presence: true
  
  
end
