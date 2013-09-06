class @DaysInput extends Spine.Controller

  init: ->
    template = HandlebarsTemplates['html/days_input']
    @html( template(@) )
    rivets.bind(@el, item: @)

  values: [ {value: 'game'}, {value: 'day'}, {value: 'flat'} ]
