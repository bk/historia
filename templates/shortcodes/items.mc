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
      <p>${ info['intro'] }
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
      ${ it }
    % else:
      % if 'fa_icon' in it:
        <span class="icon style2 major ${ 'solid' if it['fa_icon'].get('solid', False) else '' } fa-${ it['fa_icon']['name'] }"></span>
      % endif
      % if 'title' in it:
        <h3>${ it['title'] }</h3>
      % endif
      % if 'text' in it:
        <p>${ it['text'] }</p>
      % endif
    % endif
  </section>
</%def>
