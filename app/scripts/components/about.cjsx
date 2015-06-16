React = require("react")

About = React.createClass
  render: ->
    <div>
      <div className="row marketing l-side-spacing">
        <div className="col-lg-6">
          <h4>HTML5 Boilerplate</h4>
          <p>HTML5 Boilerplate is a professional front-end template for building fast, robust, and adaptable web apps or sites.</p>

          <h4>Sass</h4>
          <p>Sass is a mature, stable, and powerful professional grade CSS extension language.</p>


          <h4>Bootstrap</h4>
          <p>Sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.</p>

          <h4>Modernizr</h4>
          <p>Modernizr is an open-source JavaScript library that helps you build the next generation of HTML5 and CSS3-powered websites.</p>

        </div>
      </div>
    </div>

module.exports = About
