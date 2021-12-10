<%page args="info" />
<%namespace file="/lib/data.mc" import="get_yaml" />
<%
if isinstance(info, str):
    info = get_yaml(info)
%>
<section class="${ info.get('wrapper_style', 'wrapper style1 align-center') }">
  <div class="inner">
    % if 'title' in info:
      <h2>${ info['title'] }</h2>
    % endif
    % if 'intro' in info:
      <p>${ info['intro'] }</p>
    % endif
  </div>
  <div class="gallery ${ info.get('gallery_style', 'style2 medium lightbox onscroll-fade-in') }">
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
