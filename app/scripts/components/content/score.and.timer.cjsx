React = require "react"

ScoreAndTimer = React.createClass

  render: ->
    <div className="score-and-timer text-center">
      <h1><i className="fa fa-lg fa-clock-o"></i> 29</h1>
      <h1><i className="fa fa-lg fa-star"></i> 10</h1>
    </div>

module.exports = ScoreAndTimer
