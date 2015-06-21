React = require "react"
Mole = require "./mole"
MolesArea = require "./moles.area"
TaskBar = require "./task.bar"
ScoreAndTimer = require "./score.and.timer"
Start = require "./start"

Content = React.createClass

  getInitialState: ->
    {
      timer: 0 # 0 means game has not started yet
      score: 0
    }

  _isGameRunning: ->
    @state.timer > 0

  onGameStart: ->
    # Reset game: Game has 30s duration and initial score is 0
    @setState timer: 30, score: 0

    # running every 1s
    @intervalId = setInterval(
      =>
        if @_isGameRunning()
          # Calculate new timer, set new state
          newTimer = @state.timer-1
          @setState timer: newTimer
        else
          # Stop timer if reached 0
          clearInterval(@intervalId)
      1000
    )

  onTaskCompleted: ->
    # Increase score by 1
    @setState score: @state.score + 1

  render: ->
    # If game is running, then show moles area otherwise the start
    gamePanel = if @_isGameRunning() then <MolesArea onTaskComplete={@onTaskCompleted}/> else <Start score={@state.score} onStartClick={@onGameStart}/>

    # Show task list when not running, show score/timer when running
    sideBar = if @_isGameRunning() then <ScoreAndTimer timer={@state.timer} score={@state.score}/> else <TaskBar/>

    <div id="content" className="container-fluid">
      <div className="row">
        <div className="col-sm-8">
          {gamePanel}
        </div>
        <div className="col-sm-4">
          {sideBar}
        </div>
      </div>
    </div>

module.exports = Content
