React = require "react"
classnames = require "classnames"

Mole = React.createClass

  getInitialState: ->
    {
      # If the mole is up or not
      up: false
    }

  componentWillMount: ->
    # Setting configuration
    @config =
      # This property indicates the likelihood a mole that's currently down will pop up (percentage). Modify this value to change the game difficulty.
      popupPerc: 3
      # This property indicates how long a mole will stay visible once it has popped up (in ms)
      popupLength: 1000
      # The frame length for the checking algorithm, default runs 20 times a second (50ms)
      frameLength: 50

  componentDidMount: ->
    @intervalId = setInterval(
      =>
        if not @state.up
          # Mole is not up, find random value and check if greater then the percentage
          randVal = Math.random()*100
          if randVal < @config.popupPerc
            # Set mole up
            @setState up: true
            # Save time when the mole went up
            @upTime = new Date().getTime()
        else
          # Mole is up, check length since it went up
          if (new Date().getTime() - @upTime) > @config.popupLength
            @setState up: false
      @config.frameLength
    )

  componentWillUnmount: ->
    # Cleaning
    clearInterval(@intervalId)

  onTaskClick: (event) ->
    event.preventDefault()

    # If a task is clicked when mole is up, then trigger the callback and set the mole down
    if @state.up
      @props.onTaskComplete(@props.task)
      @setState up: false

  render: ->
    moleClasses = classnames("mole text-center", up: @state.up)

    <a href className={moleClasses} onClick={@onTaskClick}>
      <h3 className="task">{@props.task?.name}</h3>
      <div className="person">
        <img src={@props.image}/>
      </div>
      <div className="hole">
      </div>
    </a>

module.exports = Mole
