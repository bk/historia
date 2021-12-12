---
title: Shortcodes for wmk Story
subtitle: Section types in markdown content
---

## General

The shortcodes for Wmk Story take a single argument, `info`, which may be
specified directly as a Python dict or as the name of a YAML file containing a
representation of that dict.

There are five shortcodes corresponding to each of the section types used and
described in the original Story template:

- `banner`, generally used at the top of the page for a hero-like effect.
- `spotlight`, which is similar to banner but smaller and intended for use
  anywhere on the page.
- `gallery`, a gallery of clickable thumbnail images
- `items`, a grid of short items
- `simple`, generic content of a mainly textual nature.

## Banner

The `banner` shortcode expects the following keys in `info`:

- `title`, required.
- `image`, required.
- `subtitle`.
- `content`.
- `button` (a dict with the keys `label` and `link`, and optionally `class`).
- `style` (a string or dict - see below).

If `style` is a string, it contains the css classes characterizing the banner
instance, e.g. `style3 orient-left content-align-left image-position-center
fullscreen onload-image-fade-in onload-content-fade-right`.

If it is a dict, it describes the wished-for characteristics which then are
transformed into a css class string by the shortcode, e.g.

```python
{'subtype': 'circle',
 'orient': 'left',
 'align': 'left',
 'imgpos': 'center',
 'fullscreen': True,
 'onload': ['img-fadein', 'faderight']}
```

When `style` is specified as a dict, the following keys and values are
supported for banner:

- subtype: split (default), boxed, circle, phone or ontop.
- fullscreen: True or False (default).
- orient: left (default) or right.
- align: left (default), right or center.
- imgpos: left, right (default) or center.
- onload: At most one of fadein, fadeup, fadedown, fadeleft or faderight, and
  at most one of img-fadein, img-fadeup, img-fadedown, img-fadeleft,
  img-faderight. Default: none.
- onscroll: At most one of fadein, fadeup, fadedown, fadeleft or faderight, and
  at most one of img-fadein, img-fadeup, img-fadedown, img-fadeleft,
  img-faderight. Default: none.
- color: none (default), invert, 1, 2, 3, 4, 5, 6 or 7. 

## Spotlight

The `spotlight` shortcode is similar to `banner` and mostly has the same arguments.

The `style` keys supported are also the same, with the following exceptions:

- There is an additional key, `halfscreen`, which is False by default.
- The default `subtype` is `circle`, not `split`.
- The default `onscroll` is `img-fadein`.
- The default `imgpos` is `center`.

## Gallery

The `gallery` shortcode expects the following keys in `info`:

- `title`, optional.
- `intro`, optional.
- `images`, required. This is a list of dicts with the keys `img` (required), `thumb`, `title`, `caption` and `button_text`.
- `wrapper_style`: Styling for the wrapper, see the `simple` shortcode for options.
- `gallery_style`: Styling for the gallery itself; string or dict.

If `gallery_style` is specified as a dict, it supports the following keys and values:

- subtype: grid (default) or carousel.
- size: small, medium (default) or big.
- lightbox: True (default) or False.
- fadein: none, onload or onscroll (default).

## Items

The `items` shortcode expects the following keys in `info`:

- `title`, optional
- `intro`, optional,
- `items`, a list of items (required). Each item may be a string or a dict containing the keys `fa_icon`, `title` and `text`. The `fa_icon` represents a Fontawesome icon; it is a dict with the keys `name` and `solid` (a boolean, default False).
- `wrapper_style`: Styling for the wrapper, see the `simple` shortcode for options.
- `items_style`: Styling for the items container and items.

If `items_style` is specified as a dict, it may contain the following keys:

- `subtype`: bordered (default), boxed or bare.
- size: small, medium (default) or big.
- fadein: none, onload or onscroll (default).

## Simple

The `simple` shortcode expects the following keys in `info`:

- title, required.
- subtitle
- content, required.
- style: string or dict.

It accepts an extra optional argument in addition to `info`, namely
`heading_tag`, which by default is `h1`.

If `style` is specified as a dict, it makes use of the following keys:

- subtype: none, padded (default) or framed.
- align: left (default), right or center.
- invert: True or False (default).
- index: True or False (default).
- color: none (default), 1, 2, 3, 4, 5, 6, or 7.

