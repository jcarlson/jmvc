class Model

  @attributes: (@attrs...) ->
    for attr in @attrs
      do (attr) =>
        @::[attr] = ->
          console.log(attr)

class Foo extends Model
  @attributes 'this', 'that', 'theOther'

window.Model = Model
window.Foo = Foo
