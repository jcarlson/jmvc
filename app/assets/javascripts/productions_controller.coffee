class ProductionsController extends Spine.Controller

  production: ->
    window.data.production

  render: ->
    template = HandlebarsTemplates['views/production']
    context = @production()
    @html( template(context) )

@ProductionsController = ProductionsController