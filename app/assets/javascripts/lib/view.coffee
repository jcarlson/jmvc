require = @require or ((value) -> eval(value))

scan = (el) ->
  components = $(el).find('[data-component]')
  for component in components
    clazzName = $(component).data('component')
    clazz = require(clazzName)

class @View extends Spine.Module

  el: null

  template: ->
    throw 'Override template'

  render: ->
    @el = @template(@)
