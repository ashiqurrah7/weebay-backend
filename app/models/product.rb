class Product < ApplicationRecord
    belongs_to :user
    has_many :renteds
    has_many :boughts
    validates :user_id, presence: true
    validates :title, presence: true
    validates :categories, presence: true
    validates :desc, presence: true
    validates :price, presence: true
    validates :rentRate, presence: true
    validates :rentInterval, presence: true
    validates :views, presence: true
end