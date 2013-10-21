App.Habit = DS.Model.extend
  title: DS.attr('string')
  details: DS.attr('string')
  monday: DS.attr('boolean')
  tuesday: DS.attr('boolean')
  wednesday: DS.attr('boolean')
  thursday: DS.attr('boolean')
  friday: DS.attr('boolean')
  saturday: DS.attr('boolean')
  sunday: DS.attr('boolean')

  repetitions: DS.hasMany('repetition')