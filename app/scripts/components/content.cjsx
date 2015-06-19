React = require("react")

Content = React.createClass
  render: ->
    <div id="content" className="content-fluid">
      <div className="row">
        <div className="col-sm-8">
          Main Area
        </div>
        <div className="col-sm-4 text-center">
          <h2>Tasks-@-home</h2>
          <form className="default-margin form-inline">
            <div className="form-group">
              <label className="sr-only" htmlFor="exampleInputAmount">Task description to add or edit</label>
              <div className="input-group">
                <input type="text" className="form-control" id="taskToAdd" placeholder="Task description"/>
              </div>
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
      </div>
    </div>

module.exports = Content
