<script type="text/javascript">
(function() {
  var map = new ol.Map({
    target: 'map',
    layers: [
      new ol.layer.Group({
        'title': 'Tipe Peta',
        layers: [
          new ol.layer.Group({
            title: 'Air dan Daratan',
            type: 'base',
            combine: true,
            visible: false,
            layers: [
              new ol.layer.Tile({
                source: new ol.source.Stamen({
                  layer: 'watercolor'
                })
              }),
              new ol.layer.Tile({
                source: new ol.source.Stamen({
                  layer: 'terrain-labels'
                })
              })
            ]
          }),
          new ol.layer.Tile({
            title: 'Standar/OSM',
            type: 'base',
            visible: true,
            source: new ol.source.OSM()
          })
        ]
      }),
      new ol.layer.Group({
        title: 'Kecamatan',
        layers: [
          //urutan nya dari bawah ke atas

          <?php

          include('config/config.php');//koneksi ke database

          $sql = "SELECT DISTINCT `kecamatan` FROM `tempat_ibadah`"; //tampilan nama2 kecamatan
          $hasil = $conn->query($sql);
          if($hasil->num_rows > 0){ //jika hasilnya lebih dari 0
            while($row = $hasil->fetch_assoc()){ //tampilkan datanya menggunakan variabel row
              ?>
              //Checklist
              new ol.layer.Vector({
                title:  ' <?php echo $row['kecamatan'] ?> ',
                visible: false, //tidak terCheck
                source: new ol.source.Vector({
                  format: new ol.format.GeoJSON(),
                  url: 'togeojson/semua.php?kecamatan=<?php echo $row['kecamatan'] ?>'
                }),
                style:new ol.style.Style({
                  image: new ol.style.Icon(({
                    anchor: [0.5, 46],
                    anchorXUnits: 'fraction',
                    anchorYUnits: 'pixels',
                    src: 'images/star.png'
                  }))
                })
              }),
              <?php
            }
          }

          ?>
          //Checklist jika semua kecamatan
          new ol.layer.Vector({
            title: 'Semua',
            visible: true, //Awal Check
            source: new ol.source.Vector({
              format: new ol.format.GeoJSON(),
              url: 'togeojson/semua.php?kecamatan=semua'
            }),
            style:new ol.style.Style({
              image: new ol.style.Icon(({
                anchor: [0.5, 46],
                anchorXUnits: 'fraction',
                anchorYUnits: 'pixels',
                src: 'images/star.png'
              }))
            })
          })
        ]
      })
    ],
    view: new ol.View({
      center: ol.proj.fromLonLat([101.447777, 0.507068]),
      zoom: 12
    })
  });

  var layerSwitcher = new ol.control.LayerSwitcher({
    tipLabel: 'Legenda' // Optional label for button
  });
  map.addControl(layerSwitcher);

})();
</script>
