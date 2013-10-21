class RepetitionSerializer < ActiveModel::Serializer
  attribute :id
  attribute :date
  attribute :completed
  attribute :habit_id
end