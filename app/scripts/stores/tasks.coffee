Reflux = require "reflux"
TasksActions = require "../actions/tasks"
CurrentUserStore = require "./current.user"

TasksStore = Reflux.createStore

  listenables: TasksActions

  init: ->
    @listenTo(CurrentUserStore, @onLoadTasks)

  data: []

  onLoadTasks: (currentUser) ->
    @data = currentUser.tasks if currentUser.tasks?
    @trigger @data

  getInitialState: ->
    @data

  onAdd: (newTask) ->
    @data.push {name: newTask}
    @trigger @data

  onRemove: (task) ->
    index = @data.indexOf(task)
    @data.splice(index, 1)

    @trigger @data

module.exports = TasksStore
