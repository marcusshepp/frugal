# https://www.railstutorial.org/book/modeling_users
class User < ApplicationRecord
    # dependancies/m2m relationships
    has_many :items
    has_many :categories
    has_many :purchases
    has_many :budgets

    # validation
    before_save { self.email = email.downcase }
    validates :username, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, 
        presence: true, 
        length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }

    # hashes the password column with bcrypt gem
    # creates an `authenticate` method for each User object
    # ie. user.authenticate("foo")
    # returns the user object if we pass the correct password
    # else false
    # note: putting !!user.authenticate "foo"
    # will force the object into a boolean context
    has_secure_password

    validates :password, presence: true, length: { minimum: 6 }
end
