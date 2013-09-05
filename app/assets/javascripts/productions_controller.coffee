require = @require or ((value) -> eval(value))

class ProductionsController extends Spine.Controller

  events:
    'submit form' : 'add'

  init: ->
    @render()

  add: (e) ->
    e.preventDefault()
    @render()

  render: ->
    template = HandlebarsTemplates['html/production']
    context = window.data.production
    @html( template(context) )

    for component in @el.find( '[data-view]' )
      v = require( $(component).data('view'))
      new v( el: component )

@ProductionsController = ProductionsController