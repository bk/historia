<%page args="info" />
<%doc>
Keys in info:
- wrapper_style (str or dict)
- gallery_style (str or dict)
- title
- intro
- images*: list of dicts, each with img*, thumb, title, caption, button_text
</%doc>
<%namespace file="/lib/data.mc" import="get_yaml" />
<%namespace file="/lib/styling_utils.mc" import="wrapper_style, gallery_style" />
<%
if isinstance(info, str):
    info = get_yaml(info)
gstyle = gallery_style(info.get('gallery_style', {}))
wstyle = wrapper_style(info.get('wrapper_style', {'align': 'center'}))
%>
<section class="wrapper ${ wstyle }">
  % if 'title' in info or 'intro' in info:
    <div class="inner">
      % if 'title' in info:
        <h2>${ info['title'] }</h2>
      % endif
      % if 'intro' in info:
        <p>${ info['intro'] }</p>
      % endif
    </div>
  % endif
  <div class="gallery ${ gstyle }">
    % for img in info['images']:
      ${ _img(img)  }
    % endfor
  </div>
</section>

<%def name="_img(img)">
  <article>
    <a href="${ img['img'] }" class="image">
      <img src="${ img.get('thumb', img['img']) }" alt="${ img.get('title', '') }" />
    </a>
    % if 'title' in img or 'caption' in img or 'button_text' in img:
      <div class="caption">
        % if 'title' in img:
          <h3>${ img['title'] }</h3>
        % endif
        % if 'caption' in img:
          <p>${ img['caption'] }</p>
        % endif
        % if 'button_text' in img:
          <ul class="actions fixed">
            <li><span class="button small">${ img['button_text'] }</span></li>
          </ul>
        % endif
      </div>
    % endif
  </article>
</%def>
