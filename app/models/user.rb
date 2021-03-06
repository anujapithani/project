class User < ApplicationRecord
    has_secure_password
    has_many :orders
    has_one  :cart
    has_many :addresses
    validates_presence_of :user_name, :email, :password
end
