class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise_menu_id, :number, :set, :time, :distance
  belongs_to :exercise_menu, serializer: ExerciseMenuSerializer
end
