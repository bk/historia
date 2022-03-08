<%page args="info" />
<%namespace file="/lib/data.mc" import="get_yaml" />
<%namespace file="/lib/styling_utils.mc" import="wrapper_style, items_style" />
<%
if isinstance(info, str):
    info = get_yaml(info)
istyle = items_style(info.get('items_style', {}))
wstyle = wrapper_style(info.get('wrapper_style', {'align': 'center'}))
%>

<section class="wrapper ${ wstyle }">
  <div class="inner">
    % if 'title' in info:
      <h2>${ info['title'] }</h2>
    % endif
    % if 'intro' in info:
      ${ info['intro'] |markdownify }
    % endif
    <div class="items ${ istyle }">
      % for it in info['items']:
        ${ _item(it) }
      % endfor
    </div>
  </div>
</section>

<%def name="_item(it)">
  <section${ ' class="{}"'.format(it['css_class']) if 'css_class' in it else '' }>
    % if isinstance(it, str):
      ${ it | markdownify }
    % else:
      <% link = it.get('link', '') %>
      % if link and ('img' in it or 'fa_icon' in it):
        <a href="${link}">
      % endif
      % if 'img' in it:
        % if isinstance(it['img'], str):
          <img src="${ it['img'] }" alt="${it.get('title') or ''}">
        % else:
          <% if not 'alt' in it['img']: it['img']['alt'] = it.get('title', '') %>
          <img src="${ it['img']['src'] }" ${
              ' '.join(['%s="%s"' % (k, it['img'][k])
                        for k in ('alt', 'style', 'class', 'width', 'height')
                        if k in it['img']]) }>
        % endif
      % endif
      % if 'fa_icon' in it:
        <span class="icon style2 major ${ 'solid' if it['fa_icon'].get('solid', False) else '' } fa-${ it['fa_icon']['name'] }"></span>
      % endif
      % if link and ('img' in it or 'fa_icon' in it):
        </a>
      % endif
      % if 'title' in it:
        <h3>${ '<a href="%s">' % link if link else '' }${ it['title'] }${ '</a>' if link else '' }</h3>
      % endif
      % if 'text' in it:
        ${ it['text'] | markdownify }
      % endif
    % endif
  </section>
</%def>
