# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'tasks', ->
    @route 'new'
    @route 'edit', path: '/:task_id'