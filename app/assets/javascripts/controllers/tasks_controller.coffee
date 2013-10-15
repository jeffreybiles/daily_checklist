App.TasksController = Ember.ArrayController.extend
  actions:
    createTask: ->
      title = @get('newTitle')
      return if (!title.trim())
      task = @store.createRecord('task', {
        title: title,
        details: @get('newDetails')
      })
      @set('newTitle', '')
      @set('newDetails', '')
      task.save()