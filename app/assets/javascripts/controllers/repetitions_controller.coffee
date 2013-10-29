App.RepetitionsController = Ember.ArrayController.extend
  recentDays: ( ->
    days_from = [-3, -2, -1, 0, 1]
    days_from.map (day_numeration) ->
      day = moment().add('days', day_numeration)
      {pretty: day.format('dddd[,] MMMM DD'), date: day.format('L'), raw: day}
  ).property()

  remaining: ( ->
    @filterBy('completed', false).get('length')
  ).property('@each.completed')

  inflection: ( ->
    if @get('remaining') == 1 then "task" else "tasks"
  ).property('remaining')

  actions:
    goToDay: (day) ->
      debugger
      transitionToRoute('day', day)