App.HabitsNewController = Ember.ObjectController.extend
  actions:
    createHabit: ->
      @get('model').save().then =>
        @transitionToRoute('habits')