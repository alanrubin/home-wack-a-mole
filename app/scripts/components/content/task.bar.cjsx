React = require "react"

TaskBar = React.createClass
  render: ->
    <div className="text-center">
      <h2>Tasks-@-home</h2>
      <form className="default-margin form-inline">
        <div className="form-group">
          <label className="sr-only" htmlFor="exampleInputAmount">Task description to add or edit</label>
          <input type="text" className="form-control" id="taskToAdd" placeholder="Task description"/>
        </div>
        <button type="submit" className="btn btn-primary">Add</button>
      </form>
      <ul className="list-group text-left">
        <li className="list-group-item">Cras justo odio</li>
        <li className="list-group-item">Dapibus ac facilisis in</li>
        <li className="list-group-item">Morbi leo risus</li>
        <li className="list-group-item">Porta ac consectetur ac</li>
        <li className="list-group-item">Vestibulum at eros</li>
      </ul>
    </div>

module.exports = TaskBar
