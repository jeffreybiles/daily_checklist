App.TasksEditController = Ember.ObjectController.extend
  actions:
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