Reflux = require "reflux"
CurrentUserActions = require "../actions/current.user"

CurrentUserStore = Reflux.createStore

  listenables: CurrentUserActions

  data: {}

  getInitialState: ->
    @data

  onSignin: ->
    @data.loading = true
    @trigger @data

  onSigninCompleted: (currentUser) ->
    @data = currentUser
    @trigger @data

module.exports = CurrentUserStore
