App.TaskController = Ember.ObjectController.extend
  actions:
    delete: ->
      task = @get('model')
      task.deleteRecord()
      task.save().then ( =>
        @transitionToRoute('tasks')
      ), (error) =>
        task.rollback()
        # gotta figure out a way to keep it on the main page... it deletes until you reload
        alert("couldn't delete... please try again later")