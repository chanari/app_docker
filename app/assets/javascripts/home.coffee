$(document).on 'turbolinks:load', ->
  $('.btn-show').click ->
    $.get "/users", (data) ->
      $('#exampleModal').find('.modal-body').html(data)
      $('#exampleModal').modal('show')
    return false
