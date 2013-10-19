App.HabitsNewController = Ember.ObjectController.extend
  actions:
    submit: ->
      # later, just send this to habitsController where this will be combined with the method for editing
      habit = @get('model')
      habit.save().then ( =>
        @transitionToRoute('habits')
      ), (error) =>
        if error.status == 422
          console.log("validation error occured - #{error.responseText}")
          @set('validationErrors', jQuery.parseJSON(error.responseText))
        else
          alert("An error occured - REST API not available - Please try again")
