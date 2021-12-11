<%def name="_banner_or_spotlight()">\
<%
# Styling options common to banner or spotlight.
# Not all fade options apply to all styles.
# Not all styles are affected by fullscreen.
return {
    'fullscreen': { # As a boolean value, this is treated differently
        '_default': False,
    },
    'orient': {
        '_default': 'left', # content left, image right
        'left': 'orient-left',
        'right': 'orient-right',
    },
    'align': {
        '_default': 'left', # alignment of content
        'left': 'content-align-left',
        'right': 'content-align-right',
        'center': 'content-align-center',
    },
    'imgpos': {
        '_default': 'right', # positioning of image
        'left': 'image-position-left',
        'center': 'image-position-center',
        'right': 'image-position-right',
    },
    'onload': {
        '_default': 'none',
        'none': '',
        'fadein': 'onload-content-fade-in',
        'fadeup': 'onload-content-fade-up',
        'fadedown': 'onload-content-fade-down',
        'fadeleft': 'onload-content-fade-left',
        'faderight': 'onload-content-fade-right',
        'img-fadein': 'onload-image-fade-in',
        'img-fadeup': 'onload-image-fade-up',
        'img-fadedown': 'onload-image-fade-down',
        'img-fadeleft': 'onload-image-fade-left',
        'img-faderight': 'onload-image-fade-right',
    },
    'onscroll': {
        '_default': 'none',
        'none': '',
        'fadein': 'onscroll-content-fade-in',
        'fadeup': 'onscroll-content-fade-up',
        'fadedown': 'onscroll-content-fade-down',
        'fadeleft': 'onscroll-content-fade-left',
        'faderight': 'onscroll-content-fade-right',
        'img-fadein': 'onscroll-image-fade-in',
        'img-fadeup': 'onscroll-image-fade-up',
        'img-fadedown': 'onscroll-image-fade-down',
        'img-fadeleft': 'onscroll-image-fade-left',
        'img-faderight': 'onscroll-image-fade-right',
    },
    'color': { # Named background colors
        '_default': 'none',
        'none': '',
        '1': 'color1', #30363d, darkgray, a bit bluish
        '2': 'color2', #db8992, pink
        '3': 'color4', #ab7aad, pink-violet
        '4': 'color4', #897cad, purplish
        '5': 'color5', #7794ce, blueish
        '6': 'color6', #64abb4, teal/aquamarine
        '7': 'color7', #6ba78c, greenish
        'invert': 'invert',
    },
}
%>\
</%def>

<%def name="banner_style(style)">\
<%
if isinstance(style, str):
    return style
stylestr = ''
style_default = _banner_or_spotlight()
style_default['style'] = {
    '_default': 'split',
    'split': 'style1',  # 50/50 split
    'boxed': 'style2',  # boxed content on top of image
    'circle': 'style3', # image as a circle
    'phone': 'style4',  # image inside phone-like frame
    'ontop': 'style5',  # content on top of image
}
style_default['onload']['_default'] = ['img-fadein', 'faderight']
for k in style_default:
    val = style.get(k, style_default[k]['_default'])
    if k == 'fullscreen':
        stylestr += (' fullscreen' if val else '')
    elif isinstance(val, list):
        stylestr += ' ' + ' '.join([style_default[k][str(_)] for _ in val])
    else:
        stylestr += ' ' + style_default[k][str(val)]
if 'custom' in style:
    stylestr += ' ' + style['custom']
return stylestr.strip()
%>\
</%def>

<%def name="spotlight_style(style)">\
<%
if isinstance(style, str):
    return style
stylestr = ''
style_default = _banner_or_spotlight()
style_default['style'] = {
    '_default': 'circle',
    'split': 'style1',  # 30/70 split
    'circle': 'style2', # image as a circle
    'phone': 'style3',  # image inside phone-like frame
    'boxed': 'style4',  # boxed content on top of image
    'ontop': 'style5',  # content on top of image
}
style_default['halfscreen'] = {'_default': False}
style_default['onscroll']['_default'] = 'img-fadein'
style_default['imgpos']['_default'] = 'center'
for k in style_default:
    val = style.get(k, style_default[k]['_default'])
    if k == 'fullscreen':
        stylestr += (' fullscreen' if val else '')
    elif k == 'halfscreen':
        stylestr += (' halfscreen' if val else '')
    elif isinstance(val, list):
        stylestr += ' ' + ' '.join([style_default[k][str(_)] for _ in val])
    else:
        stylestr += ' ' + style_default[k][str(val)]
if 'custom' in style:
    stylestr += ' ' + style['custom']
return stylestr.strip()
%>\
</%def>

<%def name="gallery_style(style)">\
<%
if isinstance(style, str):
    return style
stylestr = ''
style_default = {
    'style': {
        '_default': 'grid',
        'grid': 'style1',
        'carousel': 'style2',
    },
    'size': {
        '_default': 'medium',
        'small': 'small',
        'medium': 'medium',
        'big': 'big',
    },
    'lightbox': {'_default': True},
    'fadein': {
        '_default': 'onscroll',
        'none': '',
        'onload': 'onload-fade-in',
        'onscroll': 'onscroll-fade-in',
    }
}
for k in style_default:
    val = style.get(k, style_default[k]['_default'])
    if k == 'lightbox':
        stylestr += (' lightbox' if val else '')
    elif isinstance(val, list):
        stylestr += ' ' + ' '.join([style_default[k][str(_)] for _ in val])
    else:
        stylestr += ' ' + style_default[k][str(val)]
if 'custom' in style:
    stylestr += ' ' + style['custom']
return stylestr.strip()
%>\
</%def>

<%def name="items_style(style)">\
<%
if isinstance(style, str):
    return style
stylestr = ''
style_default = {
    'style': {
        '_default': 'bordered',
        'bordered': 'style1', # grid separated by borders
        'boxed': 'style2',    # outlined items separated by borders
        'bare': 'style3',     # borderless grid
    },
    'size': {
        '_default': 'medium',
        'small': 'small',
        'medium': 'medium',
        'big': 'big',
    },
    'fadein': {
        '_default': 'onscroll',
        'none': '',
        'onload': 'onload-fade-in',
        'onscroll': 'onscroll-fade-in',
    }
}
for k in style_default:
    val = style.get(k, style_default[k]['_default'])
    stylestr += ' ' + style_default[k][str(val)]
if 'custom' in style:
    stylestr += ' ' + style['custom']
return stylestr.strip()
%>\
</%def>

<%def name="wrapper_style(style)">\
<%
if isinstance(style, str):
    return style
style_default = {
    'style': {
        '_default': 'padded',
        'none': '',
        'padded': 'style1', # margin and padding around '.inner' div
        'framed': 'style2', # .inner in rounded frame with lightgray margin
    },
    'align': {
        '_default': 'left', # alignment of content
        'left': 'align-left',
        'right': 'align-right',
        'center': 'align-center',
    },
    'invert':  {
        '_default': False
    },
    'index':  { # If true, all immediate children become display:flex.
        '_default': False
    },
    'color': { # Named background colors
        '_default': 'none',
        'none': '',
        '1': 'color1', #30363d, darkgray, a bit bluish
        '2': 'color2', #db8992, pink
        '3': 'color4', #ab7aad, pink-violet
        '4': 'color4', #897cad, purplish
        '5': 'color5', #7794ce, blueish
        '6': 'color6', #64abb4, teal/aquamarine
        '7': 'color7', #6ba78c, greenish
    },
}
stylestr = ''
for k in style_default:
    val = style.get(k, style_default[k]['_default'])
    if k in ('invert', 'index'):
        if val:
            stylestr += ' ' + k
    else:
        stylestr += ' ' + style_default[k][str(val)]
if 'custom' in style:
    stylestr += ' ' + style['custom']
return stylestr.strip()
%>\
</%def>
