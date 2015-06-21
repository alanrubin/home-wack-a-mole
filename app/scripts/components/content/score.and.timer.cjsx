React = require "react"

ScoreAndTimer = React.createClass

  _formatNumber: (numberToFormat) ->
    ("0" + numberToFormat).slice(-2)

  render: ->
    <div className="score-and-timer text-center">
      <h1><i className="fa fa-lg fa-clock-o"></i> {@_formatNumber(@props.timer)}</h1>
      <h1><i className="fa fa-lg fa-star"></i> {@_formatNumber(@props.score)}</h1>
    </div>

module.exports = ScoreAndTimer
