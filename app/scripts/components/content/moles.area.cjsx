React = require "react"
Mole = require "./mole"

MolesArea = React.createClass

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

  _randomTask: ->
    @tasks[Math.floor(Math.random() * (@tasks.length-1))]

  getInitialState: ->
    {
      tasksToDo:
        0: @tasks[0]
        1: @tasks[1]
        2: @tasks[2]
        3: @tasks[3]
        4: @tasks[4]
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
