# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'habits', ->
    @route 'new'
    @route 'edit', path: '/:habit_id/edit'

  @route 'today', path: '/day'
  @route 'day', path: 'day/:day'

App.set('days_list', ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'])
