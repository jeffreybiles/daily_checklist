class RepetitionGenerator
  class << self
    # expects mm-dd-yyyy.  Month and day can be
    def generate_for_date_string(date_string)
      month, day, year = date_string.split('-')
      proper_year = '20' + year[-2..-1]
      generate Date.new(proper_year.to_i, month.to_i, day.to_i)
    end

    def generate_for_tomorrow
      generate Date.tomorrow()
    end

    def generate(date)
      habits = Habit.where(name_of_day(date) => true)
      habits.each do |habit|
        Repetition.create(habit_id: habit.id, date: date) unless Repetition.where(habit_id: habit.id, date: date).any?
      end
    end

    def name_of_day(date)
      date.strftime("%A").downcase
    end
  end
end