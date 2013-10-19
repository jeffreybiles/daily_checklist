# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'tasks', ->
    @route 'edit', path: '/:task_id'

  @resource 'habits', ->
    @route 'new'
    @route 'edit', path: '/:habit_id/edit'

App.set('days_list', ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'])
