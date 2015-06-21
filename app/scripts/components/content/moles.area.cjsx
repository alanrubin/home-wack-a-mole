React = require "react"
Mole = require "./mole"

MolesArea = React.createClass

  _randomTask: ->
    @props.tasks[Math.floor(Math.random() * (@props.tasks.length-1))]

  getInitialState: ->
    {
      tasksToDo:
        0: @props.tasks[0]
        1: @props.tasks[1]
        2: @props.tasks[2]
        3: @props.tasks[3]
        4: @props.tasks[4]
    }

  onTaskComplete: (moleId, task) ->
    # Replace the completed task for a new one
    @state.tasksToDo[moleId] = @_randomTask()

    @setState tasksToDo: @state.tasksToDo

    # Trigger parent callback
    @props.onTaskComplete(task)

  render: ->
    <div>
      <div className="row">
        <div className="col-sm-4">
          <Mole image="images/baby.svg" task={@state.tasksToDo[0]} onTaskComplete={@onTaskComplete.bind(@, 0)}/>
        </div>
        <div className="col-md-offset-4 col-sm-4">
          <Mole image="images/wife.svg" task={@state.tasksToDo[1]} onTaskComplete={@onTaskComplete.bind(@, 1)}/>
        </div>
      </div>
      <div className="row">
        <div className="col-md-offset-4 col-sm-4">
          <Mole image="images/boy.svg" task={@state.tasksToDo[2]} onTaskComplete={@onTaskComplete.bind(@, 2)}/>
        </div>
      </div>
      <div className="row">
        <div className="col-sm-4">
          <Mole image="images/girl.svg" task={@state.tasksToDo[3]} onTaskComplete={@onTaskComplete.bind(@, 3)}/>
        </div>
        <div className="col-md-offset-4 col-sm-4">
          <Mole image="images/boy2.svg" task={@state.tasksToDo[4]} onTaskComplete={@onTaskComplete.bind(@, 4)}/>
        </div>
      </div>
    </div>

module.exports = MolesArea
