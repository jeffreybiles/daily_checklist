App.RepetitionsController = Ember.ArrayController.extend
  remaining: ( ->
    @filterBy('completed', false).get('length')
  ).property('@each.completed')

  inflection: ( ->
    if @get('remaining') == 1 then "task" else "tasks"
  ).property('remaining')