App.HabitController = Ember.ObjectController.extend
  days: ( ->
    App.get('days_list').filter (day, i, e) =>
      console.log(@get(day))
      @get(day)
  ).property('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday')