React = require "react"
Router = require "react-router"
Header = require "./header"
Footer = require "./footer"
Content = require "./content"

App = React.createClass
  render: ->
    <div className="app">
      <Header/>
      <Content/>
      <Footer/>
    </div>

module.exports = App
