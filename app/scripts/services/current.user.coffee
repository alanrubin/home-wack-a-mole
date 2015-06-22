$ = require "jquery"

# Provide user basic connection with backend
class CurrentUser

  signin: ->
    $.getJSON("server/signin")


# Singleton service - one instance for the whole application
module.exports = new CurrentUser()


