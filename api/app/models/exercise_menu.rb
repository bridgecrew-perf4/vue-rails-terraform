class ExerciseMenu < ApplicationRecord
     has_many :exercise, dependent: :destroy
end
