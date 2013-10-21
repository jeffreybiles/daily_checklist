App.Repetition = DS.Model.extend
  completed: DS.attr('boolean')
  date: DS.attr('date')
  habit: DS.belongsTo('habit')