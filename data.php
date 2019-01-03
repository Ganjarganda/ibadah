<!DOCTYPE html>
<html lang="en">
<html>
<head>
  <meta charset="utf-8" />
  <title>Data - GIS:IBADAH</title>
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

    <!-- Tambah Data -->
    <header class="jumbotron my-4">
      <h1 class="display-3">Data Tempat Ibadah</h1>
      <p class="lead">Daftar Tempat Ibadah yang Telah Disimpan dalam Database.</p>
      <a href="tambahdata.php" class="btn btn-primary btn-lg">Tambah data</a>
    </header>

    <!-- Search Bar -->
    <div class="active-purple-3 active-purple-4 mb-4">
      <input class="form-control" type="text" placeholder="Search" aria-label="Search">
    </div>

    <!-- Data -->
    <div class="row text-center">
      <!-- ambil data  -->
      <?php
      include('config/config.php');

      $sql = "SELECT * FROM tempat_ibadah";
      $result = $conn->query($sql);
      if ($result->num_rows > 0) {
        //output
        while($row = $result->fetch_assoc()) {
          $primarykey   = $row["no"];
          $nama_mesjid  = $row["nama_mesjid"];
          $alamat       = $row["alamat"];
          $kelurahan    = $row["kelurahan"];
          $kecamatan    = $row["kecamatan"];
          $koor_x       = $row["x"];
          $koor_y       = $row["y"];
          $imageURL     = 'images/uploads/'.$row["gambar"];
          ?>

          <div class="col-lg-3 col-md-6 mb-4">
            <div class="card">
              <img class="card-img-top" src="<?php echo $imageURL; ?>" height="150" width="500" alt=""><!-- 500x325 default dari template -->
              <div class="card-body">
                <h5 class="card-title"><?php echo $nama_mesjid; ?></h5>
                <h6 class="card-subtitle mb-2 text-muted"><?php echo $koor_x . ", " . $koor_y; ?></h6>
                <p class="card-text"><?php echo $alamat . ", " . $kelurahan . ", " . $kecamatan; ?></p>
              </div>
              <div class="card-footer">
                <a href="lihatdata.php?no=<?php echo $primarykey; ?>" class="btn btn-info">Lihat</a>
                <a href="updatedata.php?no=<?php echo $primarykey; ?>" class="btn btn-warning">Ubah</a>
                <a href="aksi/hapus_aksi.php?no=<?php echo $primarykey ?>" class="btn btn-danger">Hapus</a>
              </div>
            </div>
          </div>

          <?php
        }
      } else {
        echo "Tidak Ada Data";
      }

      $conn->close();

      ?>

    </div>

    <!-- Footer -->
    <?php include('include/footer.php'); ?>

    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
  </html>
