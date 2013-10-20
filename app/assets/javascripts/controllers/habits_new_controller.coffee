App.HabitsNewController = Ember.ObjectController.extend
  actions:
    saveHabit: ->
      @get('model').save().then =>
        @transitionToRoute('habits')

    cancel: ->
      @get('model').rollback()
      @transitionToRoute('habits')