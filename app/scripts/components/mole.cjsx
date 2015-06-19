React = require "react"
classnames = require "classnames"

Mole = React.createClass

  getInitialState: ->
    {
      active: false
    }

  onTaskClick: (event) ->
    event.preventDefault()

    @setState active: not @state.active

    @props.onTaskComplete(@props.task)

  render: ->
    imageClasses = classnames("person", active: @state.active)

    <a href className="mole text-center" onClick={@onTaskClick}>
      <h3 className="task">{@props.task?.name}</h3>
      <div className={imageClasses}>
        <img src={@props.image}/>
      </div>
      <div className="hole">
      </div>
    </a>

module.exports = Mole
