<%inherit file="base.mako"/>

<%block name="central_container">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>Packages</h1>
</section>
<!-- Main content -->
<section class="content">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">XML Files</h3>
    </div>
    <div class="box-body">
      <table id="xmlfiles" class="table table-striped table-bordered" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>XML Files</th>    
          </tr>
        </thead>
        <tfoot>
          <tr>
            <th>XML Files</th>
          </tr>
        </tfoot>
        <tbody>
        % for file in xmlfiles:
            <tr>
              <td><a href="${request.route_url('editor')}?file=${file}" target="_blank">${file}</a></td>
            </tr>
          % endfor 
        </tbody>
      </table>
    </div>
  </div>
</section>
</%block>

<%block name="extra_js">
  <script>
    $(document).ready(function() {
        $('#xmlfiles').DataTable();
    } );
  </script>
</%block>