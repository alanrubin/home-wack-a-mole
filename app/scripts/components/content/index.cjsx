React = require "react"
Mole = require "./mole"
MolesArea = require "./moles.area"
TaskBar = require "./task.bar"

Content = React.createClass

  render: ->
    <div id="content" className="container-fluid">
      <div className="row">
        <div className="col-sm-8">
          <MolesArea/>
        </div>
        <div className="col-sm-4">
          <TaskBar/>
        </div>
      </div>
    </div>

module.exports = Content
