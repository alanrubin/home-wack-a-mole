React = require "react"
Router = require "react-router"
App = require "./components/app"
Home = require "./components/home"
About = require "./components/about"
Contact = require "./components/contact"

routes =
  <Router.Route name="app" path="/" handler={App}>
    <Router.DefaultRoute handler={Home}/>
    <Router.Route name="about" handler={About} />
    <Router.Route name="contact" handler={Contact} />
  </Router.Route>

exports.start = ->
  Router.run routes, (Handler) ->
    React.render(<Handler/>, document.body)
