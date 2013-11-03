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
#= require spine/relation
#=
#= require_tree ./lib
#= require_tree ./html
#= require_tree ./models
#= require_tree ./controllers

# rivets.configure
#
#   adapter:
#     subscribe: (obj, key, callback) ->
#       obj.bind(key, callback)
#     unsubscribe: (obj, key, callback) ->
#       obj.unbind(key, callback)
#     read: (obj, key) ->
#       if $.isFunction( obj[key] ) then obj[key].call(obj) else obj[key]
#     publish: (obj, key, value) ->
#       if $.isFunction( obj[key] ) then obj[key].call(obj, value) else obj[key] = value
#
#   prefix: 'rv'

$ ->
