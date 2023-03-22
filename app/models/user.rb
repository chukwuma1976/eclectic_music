class User < ApplicationRecord
    has_secure_password
    validates_presence_of :username, :password, :password_confirmation
    validates :username, uniqueness: true
    has_many :artists
end
