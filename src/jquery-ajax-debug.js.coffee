(($) ->
  $(document).ajaxError (event, xhr, settings, exception) ->
    if popup
      popup.close()
      popup = null
    if xhr.status >= 500
      if popup = window.open(null, "error", "width=800,height=600")
        $(popup.document.documentElement).html xhr.responseText
        popup.focus()
    true
)(jQuery)
