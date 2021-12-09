<%page args="info, heading_tag='h2'" />
<%doc>
Expected keys in 'info':
- section_type
- style
- title*
- subtitle
- content
- image*
- button (with label, link)

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

<section class="wrapper ${ info.get('style', '') or 'style1' }">
  <div class="inner medium">
    <${heading_tag}>${ info['title'] }</${heading_tag}>
    ${ info['content'] }
  </div>
</section>
