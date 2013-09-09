class ProductionsController extends Spine.Controller

  init: ->
    template = HandlebarsTemplates['html/production']
    context = window.data.production
    @html( template(context) )

@ProductionsController = ProductionsController
