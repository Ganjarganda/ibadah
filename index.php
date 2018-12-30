<!DOCTYPE html>
<html lang="en">
<html>
<head>
  <meta charset="utf-8" />
  <title>Beranda - GIS:IBADAH</title>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
  <!-- OpenLayers primary-->
  <link rel="stylesheet" href="https://openlayers.org/en/latest/css/ol.css" />
  <script type="text/javascript" src="https://openlayers.org/en/latest/build/ol.js"></script>
  <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>

  <!-- OpenLayers Features -->
  <!-- OpenLayers LayerSwitcher -->
  <link rel="stylesheet" href="css/ol3-layerswitcher.css" />
  <link rel="stylesheet" href="css/fungsiweb.css" />

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">

</head>
<body>

  <!-- Navigation -->
  <?php include('include/navigation.php'); ?>

  <!-- Page Content -->
  <div class="container-fluid">

    <header class="my-4">
      <h1 class="display-4 text-center">Peta Tempat Ibadah</h1>
    </header>

    <!-- Map -->
    <div class="row">

      <div id="map"></div>

      <div id="popup" class="ol-popup">
        <a href="#" id="popup-closer" class="ol-popup-closer"></a>
        <div id="popup-content"></div>
      </div>

    </div>
    <!-- /.row -->

    <hr>

    <!-- Footer -->
    <?php include('include/footer.php'); ?>

    <!-- Features -->
    <?php include('js/ol3-layerswitcher.php'); ?>
    <?php include('js/fungsiweb.php'); ?>

    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
  </html>
