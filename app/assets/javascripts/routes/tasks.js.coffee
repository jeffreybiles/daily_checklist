App.TasksRoute = Ember.Route.extend
  model: ->
    @store.findAll 'task'

App.TasksNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'task'