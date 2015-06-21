React = require "react"

Start = React.createClass
  render: ->
    message =
      if @props.score > 0
        <div>
          <h1>Game over !</h1>
          <h1>Congratulations, your score is {@props.score} !!!</h1>
        </div>
      else
        <h1>Welcome to Home Wack-A-Mole</h1>

    <div className="text-center start">
      {message}
      <button onClick={@props.onStartClick} type="button" className="btn btn-primary btn-lg"><i className="fa fa-play"></i> Play Game</button>
    </div>

module.exports = Start
