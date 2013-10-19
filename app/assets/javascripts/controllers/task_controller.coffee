App.TaskController = Ember.ObjectController.extend
  actions:
    delete: ->
      task = @get('model')
      task.deleteRecord()
      task.save().then ( =>
        @transitionToRoute('tasks')
      ), (error) =>
        task.rollback()
        alert("couldn't delete... please try again later")

    acceptChanges: ->
      @set('isEditing', false)

      if Ember.isEmpty @get('model.title')
        @send('delete')
      else
        @get('model').save()

    editTodo: ->
      @set('isEditing', true)


  isEditing: false

