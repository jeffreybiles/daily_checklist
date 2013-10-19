App.HabitController = Ember.ObjectController.extend
  days: ( ->
    days_list = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    days = days_list.filter (day, i, e) =>
      @get(day)
  ).property('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday')