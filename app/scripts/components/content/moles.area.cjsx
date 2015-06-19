React = require "react"
Mole = require "./mole"

MolesArea = React.createClass

  onTaskComplete: (task) ->
    console.log "Completed Task !", task.name

  render: ->
    <div>
      <div className="row">
        <div className="col-sm-4">
          <Mole image="images/baby.svg" task={{id: 0, name: "Clean the house !"}} onTaskComplete={@onTaskComplete}/>
        </div>
        <div className="col-md-offset-4 col-sm-4">
          <Mole image="images/wife.svg" task={{id: 0, name: "Clean the house 2 !"}} onTaskComplete={@onTaskComplete}/>
        </div>
      </div>
      <div className="row">
        <div className="col-md-offset-4 col-sm-4">
          <Mole image="images/boy.svg" task={{id: 0, name: "Clean the house 3 !"}} onTaskComplete={@onTaskComplete}/>
        </div>
      </div>
      <div className="row">
        <div className="col-sm-4">
          <Mole image="images/girl.svg" task={{id: 0, name: "Clean the house 4 !"}} onTaskComplete={@onTaskComplete}/>
        </div>
        <div className="col-md-offset-4 col-sm-4">
          <Mole image="images/boy2.svg" task={{id: 0, name: "Clean the house 5 !"}} onTaskComplete={@onTaskComplete}/>
        </div>
      </div>
    </div>

module.exports = MolesArea
