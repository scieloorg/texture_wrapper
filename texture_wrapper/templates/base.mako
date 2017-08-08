<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SciELO Texture Wrapper</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/adminlte/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/static/adminlte/css/skins/_all-skins.min.css">
    <%block name="context_header" />
  </head>
  <body class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">
      <header class="main-header">
        <nav class="navbar navbar-static-top">
          <div class="navbar-header">
            <!-- Logo -->
            <a href="/" class="navbar-brand">
              SciELO Texture Wrapper
            </a>
          </div>
          <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
            <ul class="nav navbar-nav">
              <li class="active">
                <a href="/packages">
                  <i class="fa fa-cloud"></i> <span> Packages</span>
                </a>
              </li>
          </div>
        </nav>

      </header>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <%block name="central_container" />
      </div>
      <!-- Footer -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.0
        </div>
        <strong>SciELO Texture Wrapper <a href="#"></a></strong>
      </footer>
    </div>

    <!-- jQuery 2.2.3 -->
    <script src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.6 -->
    <script src="/static/bootstrap/js/bootstrap.min.js"></script>
    <!-- Slimscroll -->
    <script src="/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="/static/plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="/static/adminlte/js/app.min.js"></script>
  </body>
</html>
