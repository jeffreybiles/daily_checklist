# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create([
              { title: 'floss', details: 'do it at night' },
              { title: 'shower', details: 'do it in the morning'}
            ])

Habit.create([
  { title: 'floss', details: 'do it at night', monday: true, wednesday: true, thursday: true },
  { title: 'shower', details: 'do it in the morning', tuesday: true, thursday: true}
            ])