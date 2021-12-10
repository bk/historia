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
      <p>${ info['intro'] }
    % endif
    <div class="items ${ info.get('items_style', 'style1 medium onscroll-fade-in') }">
      % for it in info['items']:
        ${ _item(it) }
      % endfor
    </div>
  </div>
</section>

<%def name="_item(it)">
  <section>
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
