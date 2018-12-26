<?php
$con = mysqli_connect("localhost","root","","gisibadah");

// Check connection
if (mysqli_connect_errno())
{
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$sql = 'SELECT * FROM `tempat_ibadah` WHERE `kecamatan` = "kosong" ';
$rs = $con->query($sql);
if (!$rs) {
  echo 'An SQL error occured.\n';
  exit;
}
$geojson = array (
  'type'	=> 'FeatureCollection',
  'features'	=> array()
);
while ($row = mysqli_fetch_row($rs)) {
  $properties = $row;
  unset($properties[$row[5]]);
  unset($properties[$row[6]]);
  $feature = array(
    'type'	=> 'Feature',
    'geometry' => array(
      'type' => 'Point',
      'coordinates' => array(
        (float)$row[6],
        (float)$row[5]
      )
    ),
    //'properties' => $properties
    'properties' => array(
      'no' => $row[0],
      'nama_mesjid' => $row[1],
      'alamat' => $row[2],
      'kecamatan' => $row[3],
      'kelurahan' => $row[4],
      'x' => (float)$row[5],
      'y' => (float)$row[6]
    )
  );
  array_push($geojson['features'], $feature);
}
header('Content-type: application/json');
echo json_encode($geojson, JSON_PRETTY_PRINT);

$conn = NULL;
?>
