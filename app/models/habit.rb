class Habit < ActiveRecord::Base
  has_many :repetitions
end
