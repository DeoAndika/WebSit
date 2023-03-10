<?php
$title = "Data Pengiriman";
$judul = $title;
include '../database/koneksi.php';
include 'proses/crud.php';

$startLat = -6.259023297841284;
$startLong = 106.92475031021249;
$data = readDataAllRow($koneksi, "SELECT *,((6371*ACOS(SIN(RADIANS(tbl_barang.lat))*SIN(RADIANS('$startLat'))+COS(RADIANS (tbl_barang.long - '$startLong'))*COS(RADIANS(tbl_barang.lat))*COS(RADIANS('$startLat'))) + 1.4)) as jarak FROM 
                                tbl_resi JOIN tbl_barang ON tbl_resi.id_barang = tbl_barang.id_barang");
// var_dump($data);die;
?>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Responsive Hover Table</h3>

                    <div class="card-tools">
                        <div class="input-group input-group-sm" style="width: 150px;">
                            <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-default">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <table id="example2" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Barang</th>
                                <th>Nama Penerima</th>
                                <th>Alamat</th>
                                <th>Lat,Long</th>
                                <th>Jarak</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($data as $dt) { ?>
                                <tr>
                                    <td><?= $i++ ?></td>
                                    <td><?= $dt['nama_barang'] ?></td>
                                    <td><?= $dt['penerima'] ?></td>
                                    <td><?= $dt['alamat_penerima'] ?></td>
                                    <td><?= $dt['lat'] . ',' . $dt['long'] ?></td>
                                    <td><?= substr($dt['jarak'], 0, 3)." Km" ?></td>
                                    <td><?= $dt['status'] ?></td>
                                    <td><button onclick="getId('<?= $dt['id_resi'] ?>')" type="button" data-toggle="modal" data-target="#modalEditStatus" class="btn btn-warning"><i style="color:white" class="fa fa-edit"></i></button>
                                    </td>
                                </tr>
                            <?php } ?>
                            </tfoot>
                    </table>

                </div>

                <!-- /.card-body -->
            </div>
            
            <!-- /.card -->
        </div>
        <!-- /.row -->
</section>

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Form Hapus Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Anda yakin ingin menghapus data tersebut ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <a id="btn_delete" class="btn btn-primary">Hapus Data </a>
            </div>
        </div>
    </div>
</div>
<script>
    function deleteData(id) {
        document.getElementById("btn_delete").href = '_halaman/proses/delete_kurir.php?id=' + id;
    }
</script>

<div class="modal fade" id="modalEditStatus" tabindex="-1" role="dialog" aria-labelledby="modalEditStatusLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalEditStatusLabel">Edit Status Pengiriman</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="../Admin/_halaman/proses/update-status.php" method="post">
          <div class="form-group ">
            <input type="hidden" id="id_resi" name="id_resi">
            <input type="hidden" id="kurir" name="kurir">
            <label>Status</label>
            <select class="form-control" name="status">
              <option value="">--Pilih--</option>
              <option value="Sedang Mengirim">Sedang Mengirim</option>
              <option value="Di Terima">Di Terima</option>
              <option value="Batal">Batal</option>
            </select>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit" type="submit" class="btn btn-primary">Save changes</a>
      </div>
      </form>
    </div>
  </div>
</div>
<script>
     function getId(id) {
    $('#id_resi').val(id);
  }
</script>