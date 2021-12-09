<%page args="info" />
<%! to_spotlight = lambda s: s.replace('"banner ', '"spotlight ', 1).replace('h1>', 'h2>') %>
<%doc>
Expected keys in 'info': Same as banner.

Supported classes for style:
- order-1-2 (default), order-2-1
- rounded (default), square
</%doc>
<%namespace file="banner.mc" name="banner" />
${ capture(lambda: banner.body(info)) |to_spotlight }
