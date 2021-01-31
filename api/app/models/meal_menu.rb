class MealMenu < ApplicationRecord
    has_many :meal, dependent: :destroy
end
