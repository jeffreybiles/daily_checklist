# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'tasks', ->
    @route 'edit', path: '/:task_id'

  @resource 'habits', ->
    @route 'new'
    @route 'edit', path: '/:habit_id/edit'