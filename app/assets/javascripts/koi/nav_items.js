$ (function () {

  $ (".sitemap ol").livequery (function () {
    $ (this).addClass ('nav-items');
  });

  $ (".sitemap.application").application (function ($sitemap) {

    var $navItems = $sitemap.component ('.nav-items')
    ,   $undo     = $sitemap.component ('.undo.button')
    ,   path      = $sitemap.data ('uri-save')
    ;

    $sitemap.components ('ol', function ($ol) {
      $ol.addClass ('nav-items');
    });

    function save (data, cb) {
      $.post (path, { set: data }, cb);
    }

    function refresh (data) {
      $navItems.load (path, { set: data });
    }

    function toString () {
      return JSON.stringify (toJSON ());
    }

    function toJSON () {
      return $navItems.nestedSortable ('toHierarchy', { startDepthCount: 0 });
    }

    $navItems
    .nestedSortable({
      forcePlaceholderSize: true
    , handle: 'div'
    , helper: 'clone'
    , items: '.sortable'
    , opacity: .6
    , placeholder: 'placeholder'
    , revert: 250
    , tabSize: 25
    , tolerance: 'pointer'
    , toleranceElement: '> div'
    })
    .on ("sortupdate", function () {
      $undo.removeClass ("disabled");
      save (toString ());
    })
    ;
  });

  $ (".nav-item.application").application (true, function ($item) {

    var $zone = $item.component (".zone");
    var $body = $item.component (".body");
    var $link = $item.component (".pop-up");
    var $menu = $item.component (".controls");
    var $kids = $item.component (".nav-items");

    $link.click (function () { $.getScript (this.href); return false; });

    $zone.koiHover (25,
      function () {
        $menu.css ({ visibility: "visible" }).fadeIn (75);
        $body.animate ({ backgroundColor:"#e8e8e8" }, 75);
      },
      function () {
        $menu.delay(75).fadeOut (50);
        $body.delay(75).animate ({ backgroundColor:"rgba(0, 0, 0, 0)" }, 50);
      });
  });
});