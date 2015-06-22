Reflux = require "reflux"
CurrentUserActions = require "../actions/current.user"

CurrentUserStore = Reflux.createStore

  listenables: CurrentUserActions

  data: {}

  getInitialState: ->
    @data

  onSigninCompleted: (currentUser) ->
    @data = currentUser
    @trigger @data

module.exports = CurrentUserStore
