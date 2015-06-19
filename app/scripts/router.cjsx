React = require "react"
Router = require "react-router"
App = require "./components/app"
Home = require "./components/home"
Content = require "./components/content"

routes =
  <Router.Route name="app" path="/" handler={App}>
    <Router.DefaultRoute handler={Home}/>
    <Router.Route name="content" handler={Content} />
  </Router.Route>

exports.start = ->
  Router.run routes, (Handler) ->
    React.render(<Handler/>, document.body)
