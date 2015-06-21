React = require "react"

Start = React.createClass
  render: ->
    message =
      if @props.score > 0
        <h1>Game over ! Congratulations, your score is {@props.score} !!!</h1>
      else
        <h1>Welcome to Home Wack-A-Mole</h1>

    <div className="text-center start">
      {message}
      <button onClick={@props.onStartClick} type="button" className="btn btn-primary btn-lg"><i className="fa fa-play"></i> Play Game</button>
    </div>

module.exports = Start
