React = require "react"

Start = React.createClass
  render: ->
    <div className="text-center start">
      <h1> Welcome to Home Wack-A-Mole</h1>
      <button onClick={@props.onStartClick} type="button" className="btn btn-primary btn-lg"><i className="fa fa-play"></i> Play Game</button>
    </div>

module.exports = Start
