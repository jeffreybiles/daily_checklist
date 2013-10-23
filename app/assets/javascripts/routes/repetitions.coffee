App.RepetitionsRoute = Ember.Route.extend
  model: ->
    @store.find 'repetition'