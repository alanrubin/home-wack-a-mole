React = require "react"

TaskBar = React.createClass
  render: ->
    tasksList = @props.tasks.map (task, index) ->
      <li key={index} className="list-group-item">{task.name} <a href className="pull-right"><i className="fa fa-lg fa-trash-o"></i></a></li>

    <div className="text-center">
      <h2>Tasks</h2>
      <form className="default-margin form-inline">
        <div className="form-group">
          <label className="sr-only" htmlFor="exampleInputAmount">Task description to add or edit</label>
          <input type="text" className="form-control" id="taskToAdd" placeholder="Task description"/>
        </div>
        <button type="submit" className="btn btn-primary">Add</button>
      </form>
      <ul className="list-group text-left">
        {tasksList}
      </ul>
    </div>

module.exports = TaskBar
