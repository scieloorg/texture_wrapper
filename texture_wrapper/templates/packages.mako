<%inherit file="base.mako"/>

<%block name="central_container">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>Packages</h1>
</section>
<!-- Main content -->
<section class="content">
    <h2>Lista de Pacotes</h2>
    <ul>
    % for file in xmlfiles:
        <li><a href="${request.route_url('editor')}?file=${file}" target="_blank">${file}</a></li>
    % endfor 
    </ul>
</section>
</%block>