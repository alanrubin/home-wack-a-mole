React = require "react"
Router = require "react-router"

Home = React.createClass
  render: ->
    <div>
      <div className="jumbotron">
        <h1>'Allo, 'Allo!</h1>
        <p className="lead">Always a pleasure scaffolding your apps.</p>
        <p><Router.Link to="about" className="btn btn-lg btn-success" href="#">Splendid! <span className="glyphicon glyphicon-ok"></span></Router.Link></p>
      </div>
    </div>

module.exports = Home
