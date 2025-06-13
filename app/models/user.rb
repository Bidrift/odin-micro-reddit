class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, :password, :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email" }, uniqueness: true
    validates :username, length: { in: 4..10 }, uniqueness: true
    validates :password, length: { in: 6..16 }
end
