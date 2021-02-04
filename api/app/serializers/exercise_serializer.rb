class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise_menu_id, :number, :set, :time, :distance, :exercise_time
  belongs_to :exercise_menu, serializer: ExerciseMenuSerializer
end
