App.TasksRoute = Ember.Route.extend
  model: ->
    @store.findAll 'task'