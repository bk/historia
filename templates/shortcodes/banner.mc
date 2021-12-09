<%page args="info" />
<%doc>
Expected keys in 'info':
- section_type
- style
- title*
- subtitle
- content
- image*
- button (with label, link, maybe class)

Supported classes for style:
- split-1-1 (default), split-none, split-2-3
- order-1-2 (default), order-2-1
- fullscreen (default not)
- square (default), rounded, behind
</%doc>
<%namespace file="/lib/data.mc" import="get_yaml" />
<%
if isinstance(info, str):
    info = get_yaml(info)
%>
<section class="banner ${ info.get('style', '') }">
  <div class="content">
    <h1>${ info['title'] }</h1>
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
