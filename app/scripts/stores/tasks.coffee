Reflux = require "reflux"
TasksActions = require "../actions/tasks"

TasksStore = Reflux.createStore

  listenables: TasksActions

  data: [
    {name: "Clean the house"}
    {name: "Do the laundry"}
    {name: "Take care of the baby"}
    {name: "Drop the kids at the school"}
    {name: "Cook for the weekend"}
    {name: "Fuel the car"}
    {name: "Clean the garden"}
    {name: "Pay the bills"}
    {name: "Give me some money"}
    {name: "Call your mother-in-law"}
    {name: "Come home earlier"}
    {name: "Throw the garbage"}
    {name: "Fix the chair"}
  ]

  getInitialState: ->
    @data

  onAdd: (newTask) ->
    @data.push {name: newTask}
    @trigger @data

module.exports = TasksStore
