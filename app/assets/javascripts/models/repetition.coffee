App.Repetition = DS.Model.extend
  completed: DS.attr('boolean')
  date: DS.attr('date')
  habit: DS.belongsTo('habit')

  title: ( ->
    @get('habit.title')
  ).property('habit.title')

  details: ( ->
    @get('habit.details')
  ).property('habit.details')