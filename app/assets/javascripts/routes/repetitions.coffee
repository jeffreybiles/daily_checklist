App.RepetitionsRoute = Ember.Route.extend
  model: (params, transition) ->
    @store.find 'repetition'