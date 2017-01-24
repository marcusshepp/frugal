class User < ApplicationRecord
    has_many :items
    has_many :categories
    has_many :purchases
    has_many :budgets
end
