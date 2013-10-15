# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'tasks', ->
    @route 'edit', path: '/:task_id'