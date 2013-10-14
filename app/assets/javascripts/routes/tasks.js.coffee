App.TasksRoute = Ember.Route.extend
  model: ->
    @store.findAll 'task'

  submit: ->
    task = @get('model')
    task.save().then ( =>
      @transitionToRoute('tasks')
    ), (error) =>
      if error.status == 422
        console.log("validation error occured - #{error.responseText}")
        @set('validationErrors', jQuery.parseJSON(error.responseText))
      else
        alert("An error occured - REST API not available - Please try again")

App.TasksNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'task'