class @OfferThreadList extends Spine.Controller

  events:
    'click [data-id]' : '_click'

  elements:
    '[data-id]': 'offerThreads'

  template: HandlebarsTemplates['html/offerThreadList']

  init: ->
    @listenTo Vehicle, 'change refresh', @_render

  change: (vehicleId) ->
    @offerThreads
      .removeClass('active')
      .filter("[data-id='#{vehicleId}']")
      .addClass('active')

  # private

  _click: (e) ->
    id = $(e.target).closest('li[data-id]').data('id')
    Spine.Route.navigate('/offerThreads', id)

  _render: =>
    vehicles = Vehicle.all()
    @html @template( vehicles: vehicles )