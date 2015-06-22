Reflux = require "reflux"
CurrentUserService = require "../services/current.user"

CurrentUserActions = Reflux.createActions
  signin: { asyncResult: true }

CurrentUserActions.signin.listenAndPromise CurrentUserService.signin

module.exports = CurrentUserActions
