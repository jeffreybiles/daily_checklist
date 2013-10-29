App.DayRoute = Ember.Route.extend
  model: (day) ->
    @store.find 'repetition', day: day
