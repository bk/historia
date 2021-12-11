<%page args="info, heading_tag='h1'" />
<%doc>
Expected keys in 'info':
- (section_type)
- style
- title*
- subtitle
- content*
</%doc>
<%namespace file="/lib/data.mc" import="get_yaml" />
<%namespace file="/lib/styling_utils.mc" import="wrapper_style" />
<%
if isinstance(info, str):
    info = get_yaml(info)
stylestr = wrapper_style(info.get('style', {}))
%>
<section class="wrapper ${ stylestr }">
  <div class="inner medium">
    % if 'subtitle' in info:
      <header>
        <${heading_tag}>${ info['title'] }</${heading_tag}>
        <p>${ info['subtitle']  }</p>
      </header>
    % else:
      <${heading_tag}>${ info['title'] }</${heading_tag}>
    % endif
    ${ info['content'] }
  </div>
</section>
