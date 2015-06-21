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
      tasks: [
        {id: 0, name: "Clean the house"}
        {id: 1, name: "Do the laundry"}
        {id: 2, name: "Take care of the baby"}
        {id: 3, name: "Drop the kids at the school"}
        {id: 4, name: "Cook for the weekend"}
        {id: 5, name: "Fuel the car"}
        {id: 6, name: "Clean the garden"}
        {id: 7, name: "Pay the bills"}
        {id: 8, name: "Clean the garden"}
        {id: 9, name: "Call your mother-in-law"}
      ]
    }

  _isGameRunning: ->
    @state.timer > 0

  onGameStart: ->
    # Reset game: Game has 10s duration and initial score is 0
    @setState timer: 20, score: 0

    # running every 1s
    @intervalId = setInterval(
      =>
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
    # If game is running, then show moles area otherwise the start
    gamePanel = if @_isGameRunning() then <MolesArea tasks={@state.tasks} onTaskComplete={@onTaskCompleted}/> else <Start score={@state.score} onStartClick={@onGameStart}/>

    # Show task list when not running, show score/timer when running
    sideBar = if @_isGameRunning() then <ScoreAndTimer timer={@state.timer} score={@state.score}/> else <TaskBar tasks={@state.tasks}/>

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
