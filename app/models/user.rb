class User < ApplicationRecord
    has_many :products
    has_many :renteds
    has_many :boughts
    validates :email, presence: true
    validates :password, presence: true
    validates :name, presence: true
    validates :address, presence: true
end
