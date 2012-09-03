//= require ./lib/jquery
//= require ./lib/shim
//= require ./lib/bootstrap
//= require ./lib/highcharts
//= require ./lib/highcharts
//= require_tree ./application
//= require ./nav_items
//= require ./wysiwyg

! function () {

  var $window = $ (window)

  $.livequery.registerPlugin ("html");

  $.application.debug = true;

  // $('.tab-content').application
  //   (function ($this) { $this.children ().maximise ('height'); });

  $ ('.date.input').application
    (true, function ($this) { $this.koiDatePicker () });

  // $('.rich.text.input').application
  //   (true, function ($this) { $this.koiEditor () });

  $ ('.sortable.fields').application
    (true, function ($this) { $this.koiSortable () });

  $ ('.nested-fields').application
    (true, function ($this) { $this.koiNestedFields () });

  $ ('.superfish').application
    (true, function ($this) { $this.superfish ({ delay:100 }); });

  var fnModal = $.fn.modal

  $.fn.modal = function ()
  {
    var it = $ (this)

    if (it.data ('modal')) return fnModal.apply (this, arguments)
    
    fnModal.apply (this, arguments)

    if (it.hasClass ('fade')) it.on ('show', function () { it.css ('top', $window.scrollTop () + 100) })
    return this
  }

} (jQuery);
