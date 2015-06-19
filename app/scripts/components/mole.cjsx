React = require "react"

Mole = React.createClass
  render: ->
    <a href className="mole text-center">
      <h3 className="task">Do the laundry!</h3>
      <div className="person">
        <img src="images/baby.svg"/>
      </div>
      <div className="hole">
      </div>
    </a>

module.exports = Mole
