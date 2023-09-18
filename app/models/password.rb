class Password < ApplicationRecord
  has_many :user_passwords, dependent: :destroy 
  has_many :users, through: :user_passwords
  
  encrypts :password
  encrypts :username, deterministic: true

  validates :username, presence: true
  validates :url, presence: true
  validates :password, presence: true

  def shareable_users
    User.excluding(users)
  end
end
