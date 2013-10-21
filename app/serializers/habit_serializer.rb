class HabitSerializer < ActiveModel::Serializer
  attribute :id
  attribute :title
  attribute :details
  attribute :monday
  attribute :tuesday
  attribute :wednesday
  attribute :thursday
  attribute :friday
  attribute :saturday
  attribute :sunday
end