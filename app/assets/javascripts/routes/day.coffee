App.TodayRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo 'day', moment().format('dddd[,] MMMM DD')

App.DayRoute = Ember.Route.extend
  model: (day) ->
    @store.find 'repetition', day: day
