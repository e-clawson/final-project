class User < ApplicationRecord
    #associations
    # has_many :items, dependent: :destroy - (will destroy the items that a user made if they delete their account)
    # has_many :prompts, through: :stories

    #password protection - password_digest
    has_secure_password

     # validations
     #dont validate password presence because has secure password
     #has presence validation and Oauth would get messed up if you did that
     validates :username, uniqueness: true, presence: true, length: {in: 4..25}
     validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
     validates :password, length: {in: 6..25}
end
