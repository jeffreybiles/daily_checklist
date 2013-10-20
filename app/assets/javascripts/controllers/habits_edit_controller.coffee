App.HabitsEditController = Ember.ObjectController.extend
  actions:
    editHabit: ->
      @get('model').save().then =>
        @transitionToRoute('habits')