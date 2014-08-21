# Default bootstrap modal behavior is being replicated so the title can be set.
$ ->
  $('.modal-trigger').click (e) ->
    e.preventDefault()
    $this = $(this)
    $('#site-modal-title').html($this.data('title'))
    $('#site-modal .modal-body').load($this.data('modal-content-url'))
    $('#site-modal').modal()
