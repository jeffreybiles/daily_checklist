App.Task = DS.Model.extend(Ember.Validations.Mixin,
  title: DS.attr('string')
  details: DS.attr('string')
)

# App.Task.reopen
#   validations:
#     title:
#       presence: true