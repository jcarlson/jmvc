class @DaysInput extends Spine.Controller

  elements:
    '[data-get="unit"]' : 'currentUnit'

  events:
    'click [data-set="unit"]' : 'setUnit'

  units: []

  unit: @::units[0]

  setUnit: (e) ->
    value = $(e.target).data('value')
    @unit = unit for unit in @units when unit.value == value
    @currentUnit.text(@unit.display)

  init: ->
    for option in @el.find('option')
      unit = value: $(option).val(), display: $(option).text()
      @unit = unit if $(option).attr('selected')
      @units.push unit
    @unit = @units[0] unless @unit
    template = HandlebarsTemplates['html/days_input']
    @html( template(@) )
