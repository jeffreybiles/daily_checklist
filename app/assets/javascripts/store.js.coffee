# http://emberjs.com/guides/models/defining-a-store/
App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api/v1'

App.ApplicationSerializer = DS.ActiveModelSerializer.extend({})