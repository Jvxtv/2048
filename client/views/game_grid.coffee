Template.gameGrid.rendered = ->
  window.game = new Game(4, 4)
  addBackground()
  addGameGrid(game)

  game.start()

addBackground = ->
  background = SurfaceFactory.newBackground()
  centerModifier = ModifierFactory.newCenter()

  mainContext.add(centerModifier).add(background)

addGameGrid = (game) ->
  gridModifier = ModifierFactory.newGameGrid()
  mainContext.add(gridModifier).add(game.board.gameGrid)
