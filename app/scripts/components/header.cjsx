React = require "react"
CurrentUserStore = require "../stores/current.user"
Reflux = require "reflux"
CurrentUserActions = require "../actions/current.user"

Header = React.createClass

  mixins: [Reflux.connect(CurrentUserStore)]

  onSignin: ->
    CurrentUserActions.signin()

  render: ->
    signin =
      if @state.name
        <p className="navbar-text navbar-right">Signed in as {@state.name}</p>
      else
        <button onClick={@onSignin} type="button" className="btn navbar-right btn-default navbar-btn">Sign in</button>

    <nav id="header" className="navbar navbar-inverse">
      <div className="container-fluid">
        <div className="navbar-header">
          <button type="button" className="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span className="sr-only">Toggle navigation</span>
            <span className="icon-bar"></span>
            <span className="icon-bar"></span>
            <span className="icon-bar"></span>
          </button>
          <a className="navbar-brand" href="#">Home Wack-A-Mole</a>
        </div>

        <div className="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          {signin}
        </div>
      </div>
    </nav>

module.exports = Header

# <button type="button" className="btn navbar-right btn-default navbar-btn">Sign in</button>
