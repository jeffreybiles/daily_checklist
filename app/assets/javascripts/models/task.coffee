App.Task = DS.Model.extend
  title: DS.attr('string')
  details: DS.attr('string')

# App.Task.reopen
#   validations:
#     title:
#       presence: true