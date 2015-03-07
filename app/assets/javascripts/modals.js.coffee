# Default bootstrap modal behavior is being replicated so the title can be set.
$ ->
  $('.modal-trigger').click (e) ->
    e.preventDefault()
    $this = $(this)
    modal_content_url = $this.data('modal-content-url')
    $('#site-modal-title').html($this.data('title'))
    $('#site-modal .modal-body').load(modal_content_url)
    $('#site-modal .modal-footer').prepend("<a class='btn btn-link hidden' href='#{ modal_content_url }'>permalink</a>");
    $('#site-modal').modal()
