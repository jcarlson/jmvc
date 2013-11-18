class @OfferThreadDetails extends Spine.Controller

  template: HandlebarsTemplates['html/offerThreadDetails']

  change: (vehicleId) ->
    vehicle = Vehicle.find(vehicleId)
    @_render(vehicle)

  # private

  _render: (vehicle) ->
    @html @template( vehicle )