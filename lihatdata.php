<!DOCTYPE html>
<html lang="en">
<html>
<head>
  <meta charset="utf-8" />
  <title>Lihat - GIS:IBADAH</title>
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
  <div class="container">

    <?php
    include('config/config.php');

    if (isset($_GET['no'])) {
      $no = $_GET['no'];
      $sql = "SELECT * FROM tempat_ibadah WHERE no = $no";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
          $nama_mesjid  = $row["nama_mesjid"];
          $alamat       = $row["alamat"];
          $kelurahan    = $row["kelurahan"];
          $kecamatan    = $row["kecamatan"];
          $koor_x       = $row["x"];
          $koor_y       = $row["y"];
          $imageURL     = 'images/uploads/'.$row["gambar"];
          ?>

          <!-- Portfolio Item Heading -->
          <h1 class="my-4">
            <?php echo $nama_mesjid; ?>
          </h1>

          <!-- Portfolio Item Row -->
          <div class="row">

            <div class="col-md-8">
              <img class="" src="<?php echo $imageURL; ?>" height="500" width="750"  alt="">
            </div>

            <div class="col-md-4">
              <h3 class="my-3">Alamat</h3>
              <p><?php echo $alamat . ", " . $kelurahan . ", " . $kecamatan; ?>.</p>
              <h3 class="my-3">Koordinat Lokasi</h3>
              <ul>
                <li>X : <?php echo $koor_x; ?></li>
                <li>Y : <?php echo $koor_y; ?></li>
              </ul>
            </div>

          </div>
          <!-- /.row -->

          <!-- Related Projects Row -->
          <h3 class="my-4">Referensi</h3>

          <div class="row">

            <div class="col-md-3 col-sm-6 mb-4">
              <a href="#">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
              </a>
            </div>

            <div class="col-md-3 col-sm-6 mb-4">
              <a href="#">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
              </a>
            </div>

            <div class="col-md-3 col-sm-6 mb-4">
              <a href="#">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
              </a>
            </div>

            <div class="col-md-3 col-sm-6 mb-4">
              <a href="#">
                <img class="img-fluid" src="http://placehold.it/500x300" alt="">
              </a>
            </div>

          </div>
          <!-- /.row -->

          <?php
        }
      }
      $conn->close();
    } else {
      echo "
      <script type='text/javascript'>
      alert('Data Tidak Diketahui');
      window.location.href='../data.php';
      </script>
      ";
    }

    ?>








    <!-- Footer -->
    <?php include('include/footer.php'); ?>

    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
  </html>
