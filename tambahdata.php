<!DOCTYPE html>
<html lang="en">
<html>
<head>
  <meta charset="utf-8" />
  <title>Tambah Data - GIS:IBADAH</title>
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
      <h1 class="display-4">Tambah Data</h1>
    </header>

    <!-- Tambah Data -->
    <form method="post" action="aksi/tambahdata_aksi.php" enctype="multipart/form-data">
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Nama</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="nama_mesjid" placeholder="Mesjid AR-RAHMAN" required>
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Alamat</label>
        <div class="col-sm-10">
          <textarea class="form-control" name="alamat" rows="3" required></textarea>
          <small class="form-text text-muted">*tidak termasuk kelurahan dan kecamatan</small>
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Kelurahan</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="kelurahan" placeholder="Tangkerang Timur" required>
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Kecamatan</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="kecamatan" placeholder="Tenayan Raya" required>
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Koordinat X</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="x" placeholder="0.483368441" required>
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Koordinat Y</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="y" placeholder="101.5003935" required>
        </div>
      </div>
      <div class="form-group row">
        <label class="col-sm-2 col-form-label">Foto</label>
        <div class="col-sm-10">
          <div class="custom-file">
            <input type="file" class="custom-file-input" name="gambar" required>
            <label class="custom-file-label" for="customFile">Choose file</label>
          </div>
        </div>
      </div>
      <button type="submit" name="submit" class="btn btn-success">Simpan</button>
    </form>

    <!-- Footer -->
    <?php include('include/footer.php'); ?>

    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
  </html>
