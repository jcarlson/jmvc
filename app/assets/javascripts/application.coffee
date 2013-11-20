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
#= require_tree ./lib
#= require_tree ./models
#= require_tree ./views
#= require_tree ./controllers

#= require json/vehicles

# vehicles = @vehicles

class Application extends Spine.Controller

  events:
    'click #render': 'render'

  template: HandlebarsTemplates['html/application']

  views:
    'list'    : OfferThreadList
    'details' : OfferThreadDetails

  init: ->
    @route '/offerThreads/:id', @change
    @render()
    Vehicle.refresh(vehicles)

  change: (params) ->
    if Vehicle.exists(params.id)
      @list.change(params.id)
      @details.change(params.id)

  render: ->
    # lift existing views out of the DOM temporarily
    @[view].el.detach() for view of @views when @[view]

    # do the render dirty work
    @html @template(@)

    # reinsert or initialize views
    for name, View of @views
      # find view slots that need filled
      slot = @$("[data-view='#{name}']")

      if @[name]
        # replace the slot with the view
        slot.replaceWith( @[name].el )
      else
        # initialize the view
        @[name] = new View(el: slot)

$ ->
  root = $('#application')
  new Application(el: root)
  Spine.Route.setup()
