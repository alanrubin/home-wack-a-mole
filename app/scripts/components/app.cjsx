React = require "react"
Router = require "react-router"
Header = require "./header"
Footer = require "./footer"

App = React.createClass
  render: ->
    <div className="container">
      <Header/>
      <Router.RouteHandler/>
      <Footer/>
    </div>

module.exports = App
