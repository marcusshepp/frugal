class Purchase < ApplicationRecord
    belongs_to :user, required: false
end
