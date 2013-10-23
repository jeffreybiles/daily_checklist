App.RepetitionController = Ember.ObjectController.extend
  completed: ((key, value) ->
    model = this.get('model')

    if value == undefined
      model.get('completed')
    else
      model.set('completed', value)
      model.save()
      value
  ).property('model.completed')
