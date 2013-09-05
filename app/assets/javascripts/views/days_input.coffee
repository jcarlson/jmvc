class @DaysInput extends Spine.Controller

  init: ->
    @log('Creating a DaysInput instance')
    template = HandlebarsTemplates['html/days_input']
    @html( template(@) )
