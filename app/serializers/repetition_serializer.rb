class RepetitionSerializer < ActiveModel::Serializer
  embed :ids

  attribute :id
  attribute :date
  attribute :completed

  has_one :habit
end