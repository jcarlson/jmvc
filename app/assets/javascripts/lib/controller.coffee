require = @require or ((value) -> eval(value))
refreshElements = Spine.Controller::refreshElements

Spine.Controller.include

  refreshElements: ->
    for elmnt in @el.find( '[data-view]' )
      View = require( $(elmnt).data('view'))
      new View( el: elmnt )
    refreshElements.call(@)
