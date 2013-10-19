App.HabitsRoute = Ember.Route.extend
  model: ->
    @store.find 'habit'

App.HabitsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'habit'