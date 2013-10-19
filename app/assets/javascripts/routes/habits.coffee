App.HabitsRoute = Ember.Route.extend
  model: ->
    @store.find 'habit'