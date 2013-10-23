App.RepetitionController = Ember.ObjectController.extend
  completed: ((key, value) ->
    model = this.get('model')

    if value == undefined
      value = model.get('completed')
      console.log(value)
      value
    else
      console.log(value)
      model.set('completed', value)
      model.save()
      value
  ).property('model.completed')
