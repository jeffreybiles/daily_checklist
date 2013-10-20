App.HabitsEditController = Ember.ObjectController.extend
  actions:
    saveHabit: ->
      @get('model').save().then =>
        @transitionToRoute('habits')

    cancel: ->
      @get('model').rollback()
      @transitionToRoute('habits')

    delete: ->
      habit = @get('model')
      habit.deleteRecord()
      habit.save().then =>
        @transitionToRoute('habits')
