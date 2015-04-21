module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', "close-other-tabs:close-other-tabs", => @init()

  init: ->
    tabBar = atom.workspace.getPanes()[0]
    tabBarElement = atom.views.getView(tabBar).querySelector(".tab-bar")
    tabBarElement.querySelector(".active").classList.add("right-clicked")
    atom.commands.dispatch(tabBarElement, 'tabs:close-other-tabs')
