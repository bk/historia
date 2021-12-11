<%page args="info" />
<%doc>
Expected keys in 'info':
- section_type (only when called from frontpage)
- style (may be string or dict -- see styling_utils.mc for details)
- title*
- subtitle
- content
- image*
- button (with label, link, maybe class)
</%doc>
<%namespace file="/lib/data.mc" import="get_yaml" />
<%namespace file="/lib/styling_utils.mc" import="spotlight_style" />
<%
if isinstance(info, str):
    info = get_yaml(info)
stylestr = spotlight_style(info.get('style', {}))
%>
<section class="spotlight ${ stylestr }">
  <div class="content">
    <h2>${ info['title'] }</h2>
    % if 'subtitle' in info:
      <p class="major">${ info['subtitle'] }</p>
    % endif
    % if 'content' in info:
      <p>${ info['content'] }</p>
    % endif
    % if 'button' in info:
    <ul class="actions stacked">
      <li><a href="${ info['button']['link'] }"
             class="button ${ info['button'].get('class', 'big wide smooth-scroll-middle') }">${ info['button']['label'] }</a></li>
    </ul>
    % endif
  </div>
  <div class="image">
    <img src="${ info['image'] }" alt="${ info['title'] |h }" />
  </div>
</section>
