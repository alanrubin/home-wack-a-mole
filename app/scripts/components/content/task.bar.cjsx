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
        <li className="list-group-item">Cras justo odio <a href className="pull-right"><i className="fa fa-lg fa-trash-o"></i></a></li>
        <li className="list-group-item">Dapibus ac facilisis in <a href className="pull-right"><i className="fa fa-lg fa-trash-o"></i></a></li>
        <li className="list-group-item">Morbi leo risus <a href className="pull-right"><i className="fa fa-lg fa-trash-o"></i></a></li>
        <li className="list-group-item">Porta ac consectetur ac <a href className="pull-right"><i className="fa fa-lg fa-trash-o"></i></a></li>
        <li className="list-group-item">Vestibulum at eros <a href className="pull-right"><i className="fa fa-lg fa-trash-o"></i></a></li>
      </ul>
    </div>

module.exports = TaskBar
