<html>
  <header>
    <style>
      /* Texture Component styles */
      @import '/static/texture/texture.css';
      /* You may want to use your own reset and pagestyle */
      @import '/static/texture/texture-reset.css';
      @import '/static/texture/texture-pagestyle.css';
      @import '/static/texture/font-awesome/css/font-awesome.min.css';

      /* It is important to tell the body not to scroll and use up 100% height */
      body { overflow: hidden; }
      html,
      body {
        height: 100%;
        display: flex;
        flex-direction: column;
      }
      #header {
        flex: 0 0 50px;
        background: #0C2C3F;
        color: rgba(255,255,255,0.9);
        padding: 20px;
        font-family: 'Avenir Next', Helvetica;
      }
      #texture_editor {
        flex: 1 1 0;
      }

    </style>
    <script type="text/javascript" src="/static/texture/substance/dist/substance.js"></script>
    <script type="text/javascript" src="/static/texture/texture.js"></script>
    <script type="text/javascript" src="/static/texture/vfs.js"></script>
    <script type="text/javascript">
      const { Texture } = window.texture

      // Loading XML: In this example we use a bundled virtual file-system
      const DEFAULT_FILE = 'data/introducing-texture.xml' // without leading '/'

      let htmlParams = new URLSearchParams(location.search.slice(1))
      let file = htmlParams.get('file') || DEFAULT_FILE

      window.onload = function() {
        $.get(file, function(data) {
          window.app = Texture.mount({
            documentId: file,
            /*
              Implement your own logic to read and write XML
            */
            readXML: function(documentId, cb) {
              xmlStr = new XMLSerializer().serializeToString(data)
              cb(null, xmlStr)
            },
            writeXML: function(documentId, xml, cb) {
              console.log('writeXML needs to be implemented for saving.')
              console.log('XML', xml)
              cb(null)
            }
          }, document.getElementById('texture_editor'))
        })
      }
    </script>
  </header>
  <!-- Main content -->
  <body>
    <div id="texture_editor">

    </div>
    <!-- jQuery 2.2.3 -->
    <script src="/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
  </body>
</html>
