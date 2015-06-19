React = require "react"
Router = require "react-router"

Header = React.createClass

  render: ->
    <nav id="header" className="navbar navbar-default">
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
          <p className="navbar-text navbar-right">Signed in as Alan Rubin</p>
        </div>
      </div>
    </nav>

module.exports = Header

# <button type="button" className="btn navbar-right btn-default navbar-btn">Sign in</button>
