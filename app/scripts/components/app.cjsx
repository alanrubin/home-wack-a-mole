React = require "react"
Router = require "react-router"
Header = require "./header"
Footer = require "./footer"

App = React.createClass
  render: ->
    <div className="app">
      <Header/>
      <Footer/>
    </div>

module.exports = App
