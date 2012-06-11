/*
 * JQuery Ajax debug script
 * v0.1.1
 */
(function() {

  $(document).ajaxError(function(event, xhr, settings, exception) {
    var popup;
    if (popup) {
      popup.close();
      popup = null;
    }
    if (xhr.status >= 500) {
      if (popup = window.open(null, "error", "width=800,height=600")) {
        $(popup.document.documentElement).html(xhr.responseText);
        popup.focus();
      }
    }
    return true;
  });

}).call(this);
