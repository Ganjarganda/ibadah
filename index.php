<!DOCTYPE html>
<html lang="en">
<html>
<head>
  <meta charset="utf-8" />
  <title>GIS:IBADAH</title>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ol3/4.0.1/ol.css" />
  <link rel="stylesheet" href="css/ol3-layerswitcher.css" />
  <link rel="stylesheet" href="css/layerswitcher.css" />

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

    <h1 class="my-1">Tempat Ibadah</h1>

    <!-- Map -->
    <div class="row">

      <div id="map"></div>

    </div>
    <!-- /.row -->

    <hr>

    <?php include('include/footer.php'); ?>


    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
    <script type="text/javascript" src="https://openlayers.org/en/latest/build/ol.js"></script>

    <!-- Layer Switcher / Filter / Checklist -->
    <?php include('js/ol3-layerswitcher.php'); ?>
    <?php include('js/fungsiweb.php'); ?>


  </body>
  </html>
