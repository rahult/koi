//= require_tree ./shim
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree ./jquery
//= require_tree ./koi
//= require ./etc/ZeroClipboard

ZeroClipboard.setMoviePath ('/assets/ZeroClipboard.swf')

$ (document).on ('click', 'a[target=_clipboard]', function ()
{
  // return false
})
