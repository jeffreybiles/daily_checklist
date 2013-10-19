class HabitSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
end