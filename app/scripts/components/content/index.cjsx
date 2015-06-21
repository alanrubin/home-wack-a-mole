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


  onGameStart: ->
    # Reset game: Game has 30s duration and initial score is 0
    @setState timer: 30, score: 0

    # running every 1s
    @intervalId = setInterval(
      =>
        # Calculate new timer, set new state
        newTimer = @state.timer-1
        @setState timer: newTimer
        # Stop timer if reached 0
        clearInterval(@intervalId) if newTimer is 0
      1000
    )

  onTaskCompleted: ->
    # Increase score by 1
    @setState score: @state.score + 1

  render: ->
    # If game has not started, them show start panel otherwise moles area
    gamePanel = if @state.timer > 0 then <MolesArea onTaskComplete={@onTaskCompleted}/> else <Start onStartClick={@onGameStart}/>

    <div id="content" className="container-fluid">
      <div className="row">
        <div className="col-sm-8">
          {gamePanel}
        </div>
        <div className="col-sm-4">
          <div className="row">
            <div className="col-sm-12">
              <ScoreAndTimer timer={@state.timer} score={@state.score}/>
            </div>
          </div>
          <div className="row">
            <div className="col-sm-12">
              <TaskBar/>
            </div>
          </div>
        </div>
      </div>
    </div>

module.exports = Content
