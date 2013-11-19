# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require handlebars.runtime
#= require spine
#= require spine/list
#= require spine/relation
#= require spine/route

#= require_tree ./html
#= require_tree ./models
#= require_tree ./controllers

#= require json/vehicles

class Application extends Spine.Controller

  template: HandlebarsTemplates['html/application']

  init: ->
    @html @template(@)

    @list    = new OfferThreadList el: @$('.offerThreadList')
    @details = new OfferThreadDetails el: @$('.offerThreadDetails')

    @route '/offerThreads/:id', @change

    Vehicle.refresh(vehicles)

  change: (params) ->
    if Vehicle.exists(params.id)
      @list.change(params.id)
      @details.change(params.id)


$ ->
  root = $('#application')
  new Application(el: root)
  Spine.Route.setup()
  #Vehicle.refresh(vehicles)
